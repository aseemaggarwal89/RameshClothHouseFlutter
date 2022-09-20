import '../../../../domain_layer/domain_layer.dart';

enum FilterType { brands }

class SelectedFilters {
  List<BrandDTO> brands;

  SelectedFilters(this.brands);
}
