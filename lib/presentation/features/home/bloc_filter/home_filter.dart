import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

import '../home.dart';
import 'filter.dart';

class HomeFilterView extends StatelessWidget {
  const HomeFilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeFilterBloc>(
      create: (context) => HomeFilterBloc(),
      child: const HomeFilterWrapperView(),
    );
  }
}

class HomeFilterWrapperView extends StatefulWidget {
  const HomeFilterWrapperView({Key? key}) : super(key: key);

  @override
  _HomeFilterWrapperViewState createState() => _HomeFilterWrapperViewState();
}

class _HomeFilterWrapperViewState extends State<HomeFilterWrapperView> {
  @override
  void initState() {
    _bloc = BlocProvider.of<HomeFilterBloc>(context);
    _bloc.add(GetFiltersEvent());
    super.initState();
  }

  late HomeFilterBloc _bloc;

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeFilterBloc, HomeFilterState>(
        builder: (BuildContext context, HomeFilterState state) {
      switch (state.runtimeType) {
        case HomeFilterInitialState:
          return _buildLoading();
        case HomeFilterLoadingState:
          return _buildLoading();
        case HomeFilterLoadedState:
          HomeFilterLoadedState loadedState = (state as HomeFilterLoadedState);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              Container(
                color: HomeFilterViewColor.backgroundColor,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: LatoTextView(
                    isTranslatable: false,
                    label: "FILTERS",
                    fontSize: 18,
                    fontType: FontType.BOLD,
                  ),
                ),
              ),
              divider(
                width: double.infinity,
              ),
              if (loadedState.activeBrands.isNotEmpty)
                const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: LatoTextView(
                    isTranslatable: false,
                    label: "Brands",
                    fontSize: 14,
                    fontType: FontType.BOLD,
                  ),
                ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: loadedState.brands.length,
                  itemBuilder: (BuildContext context, int index) {
                    final brand = loadedState.activeBrands[index];
                    return ListTile(
                      // leading:
                      //     SvgPicture.asset(R.ASSETS_ICON_RECENT_ICON_SVG),
                      title: LatoTextView(
                        label: brand.name,
                        fontSize: 14.0,
                        color: HomeFilterViewColor.filterTextColor,
                        fontType: FontType.BOLD,
                      ),
                      // trailing:
                      //     SvgPicture.asset(R.ASSETS_ICON_CARET_RIGHT_SVG),
                      // onTap: model.navigateToRecentProducts,
                    );
                  })
            ],
          );
        case HomeFilteErrorState:
          return LatoTextView(label: (state as HomeFilteErrorState).message);
        default:
          return Container();
      }
    });
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
