import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../domain_layer/domain_layer.dart';

enum SortBy {
  Newest,
  PriceAsce,
  PriceDecen,
  Ratings,
}

extension SortByExtension on SortBy {
  String get title {
    switch (this) {
      case SortBy.Newest:
        return "Newest";
      case SortBy.PriceAsce:
        return "Price: Low to High";
      case SortBy.PriceDecen:
        return "Price: High to Low";
      case SortBy.Ratings:
        return "Ratings";
    }
  }
}

@immutable
class FilterViewModel extends Equatable {
  final Set<BrandDTO> _brands = {};
  final Set<CategoriesDTO> _categories = {};
  final Set<FilterDTO> _selectedFilters = {};

  FilterViewModel(List<BrandDTO> brands, List<CategoriesDTO> categories,
      {List<FilterDTO>? selectedFilters}) {
    _brands.addAll(brands);
    _categories.addAll(categories);
    _selectedFilters.addAll(selectedFilters ?? []);
  }

  void updateFilters(
    List<BrandDTO> brands,
    List<CategoriesDTO> categories,
  ) {
    _brands.addAll(brands);
    _categories.addAll(categories);
  }

  List<FilterDTO> activeFilters(FilterType type) {
    switch (type) {
      case FilterType.brand:
        return _activeBrands;
      case FilterType.category:
        return _activeCategories;
    }
  }

  bool isSelected(FilterDTO filter) {
    return _selectedFilters.contains(filter);
  }

  FilterDTO? filter(String uniqueId, FilterType type) {
    switch (type) {
      case FilterType.brand:
        final brand = _brands.where((element) => element.uniqueId == uniqueId);
        return brand.isEmpty ? null : brand.first;
      case FilterType.category:
        return _categories
            .firstWhere((element) => element.uniqueId == uniqueId);
    }
  }

  List<BrandDTO> get _activeBrands {
    return _brands.where((element) => element.active).toList();
  }

  List<CategoriesDTO> get _activeCategories {
    return _categories.where((element) => element.active).toList();
  }

  void updateFilter(bool isSelected, FilterDTO filter) {
    if (isSelected) {
      if (!_selectedFilters.contains(filter)) {
        _selectedFilters.add(filter);
      }
    } else {
      _selectedFilters.removeWhere((element) => element == filter);
    }
  }

  List<FilterDTO> get selectedFilters {
    return _selectedFilters.toList();
  }

  @override
  List<Object?> get props => [
        _brands.map((e) => e.uniqueId),
        _categories.map((e) => e.uniqueId),
        _selectedFilters,
      ];
}
