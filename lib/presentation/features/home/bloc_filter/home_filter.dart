import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import '../../../../domain_layer/domain_layer.dart';
import 'filter.dart';

class HomeFilterView extends StatefulWidget {
  const HomeFilterView({Key? key}) : super(key: key);

  @override
  _HomeFilterViewState createState() => _HomeFilterViewState();
}

class _HomeFilterViewState extends State<HomeFilterView> {
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
    final bloc = BlocProvider.of<HomeFilterBloc>(context);

    return BlocBuilder<HomeFilterBloc, HomeFilterState>(
        builder: (BuildContext context, HomeFilterState state) {
      switch (state.runtimeType) {
        case HomeFilterInitialState:
          return _buildLoading();
        case HomeFilterLoadingState:
          return _buildLoading();
        case HomeFilterLoadedState:
        case HomeSelectedFilterState:
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
              if (bloc.activeBrands.isNotEmpty)
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
                  itemCount: bloc.activeBrands.length,
                  itemBuilder: (BuildContext context, int index) {
                    final brand = bloc.activeBrands[index];
                    return FilterCheckBox(
                      brand: brand,
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

class FilterCheckBox extends StatelessWidget {
  BrandDTO brand;

  FilterCheckBox({
    Key? key,
    required this.brand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Checkbox(
              value: BlocProvider.of<HomeFilterBloc>(context).isSelected(brand),
              onChanged: (bool? selected) {
                BlocProvider.of<HomeFilterBloc>(context)
                    .add(BrandCheckboxTappedEvent(brand, selected!));
              },
            ),
            horizontalSpaceSmall,
            LatoTextView(
              label: brand.name,
              fontSize: 14.0,
              color: HomeFilterViewColor.filterTextColor,
              fontType: FontType.BOLD,
            )
          ],
        ));
  }
}
