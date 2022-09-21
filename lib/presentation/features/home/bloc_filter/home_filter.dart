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
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: HomeFilterViewColor.backgroundColor,
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: LatoTextView(
                      isTranslatable: false,
                      label: "FILTERS",
                      fontSize: 18,
                      fontType: FontType.BOLD,
                      textAlignment: TextAlign.center,
                    ),
                  ),
                ),
                divider(
                  width: double.infinity,
                ),
                FilterSectionView(
                    title: FilterType.brand.filterName,
                    filters: bloc.activeFilters(FilterType.brand)),
                verticalSpaceRegular,
                divider(
                  width: double.infinity,
                ),
                FilterSectionView(
                    title: FilterType.category.filterName,
                    filters: bloc.activeFilters(FilterType.category)),
              ],
            ),
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

class FilterSectionView extends StatelessWidget {
  final String title;
  final List<FilterDTO> filters;
  const FilterSectionView({
    super.key,
    required this.title,
    this.filters = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (filters.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: LatoTextView(
              isTranslatable: false,
              label: title,
              fontSize: 14,
              fontType: FontType.BOLD,
            ),
          ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: filters.length,
            itemBuilder: (BuildContext context, int index) {
              final filter = filters[index];
              return FilterCheckBox(
                filter: filter,
              );
            })
      ],
    );
  }
}

@immutable
class FilterCheckBox extends StatelessWidget {
  final FilterDTO filter;

  const FilterCheckBox({
    Key? key,
    required this.filter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Checkbox(
              value:
                  BlocProvider.of<HomeFilterBloc>(context).isSelected(filter),
              onChanged: (bool? selected) {
                BlocProvider.of<HomeFilterBloc>(context)
                    .add(FilterCheckboxTappedEvent(filter, selected!));
              },
            ),
            horizontalSpaceSmall,
            LatoTextView(
              label: filter.name,
              fontSize: 14.0,
              color: HomeFilterViewColor.filterTextColor,
              fontType: FontType.BOLD,
            )
          ],
        ));
  }
}
