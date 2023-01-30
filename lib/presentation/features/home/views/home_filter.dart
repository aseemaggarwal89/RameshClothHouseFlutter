import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import '../../../../domain_layer/domain_layer.dart';
import '../bloc_filter/filter.dart';

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<HomeFilterBloc>(context);

    return BlocBuilder<HomeFilterBloc, HomeFilterState>(
        buildWhen: (previous, current) {
      return (current is HomeFilterLoadedState) ||
          (current is HomeFilterInitialState) ||
          (current is HomeFilterLoadingState) ||
          (current is HomeFilteErrorState);
    }, builder: (BuildContext context, HomeFilterState state) {
      switch (state.runtimeType) {
        case HomeFilterInitialState:
          return _buildLoading();
        case HomeFilterLoadingState:
          return _buildLoading();
        case HomeFilterLoadedState:
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: HomeFilterViewColor.backgroundColor,
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 5),
                    child: LatoTextView(
                      isTranslatable: false,
                      label: "FILTERS",
                      fontType: AppTextType.DisplayMedium,
                      textAlignment: TextAlign.start,
                    ),
                  ),
                ),
                divider(
                  width: double.infinity,
                ),
                FilterSectionView(
                    key: ValueKey(FilterType.brand.filterName),
                    title: FilterType.brand.filterName,
                    filters: bloc.activeFilters(FilterType.brand)),
                verticalSpaceRegular,
                divider(
                  width: double.infinity,
                ),
                FilterSectionView(
                    key: ValueKey(FilterType.category.filterName),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (filters.isNotEmpty)
          Row(
            children: [
              horizontalSpaceRegular,
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: LatoTextView(
                  isTranslatable: false,
                  label: title,
                  fontType: AppTextType.TitleLarge,
                ),
              ),
            ],
          ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: filters.length,
            itemBuilder: (BuildContext context, int index) {
              final filter = filters[index];
              return FilterCheckBox(
                key: ValueKey(filter.uniqueId),
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
    return BlocBuilder<HomeFilterBloc, HomeFilterState>(
        buildWhen: ((previous, current) {
      return (current is HomeSelectedFiltersState) ||
          (current is HomeFilterLoadedState);
    }), builder: (context, state) {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              horizontalSpaceRegular,
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
                color: HomeFilterViewColor.filterTextColor,
                fontType: AppTextType.TitleMedium,
              ),
            ],
          ));
    });
  }
}
