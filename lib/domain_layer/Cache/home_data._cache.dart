import '../models/entities.dart';

class HomeDataCache {
  List<BrandDTO> loadedBrands = [];
  List<CategoriesDTO> loadedCategories = [];
  List<ProductDTO> loadedProducts = [];

  HomeDataCache();

  void savedProductData(List<ProductDTO> products) {
    loadedProducts = products;
  }

  void savedBrandsData(List<BrandDTO> brands) {
    loadedBrands = brands;
  }

  void savedCategoriessData(List<CategoriesDTO> categories) {
    loadedCategories = categories;
  }

  BrandDTO? brand(String uniqueId) {
    return loadedBrands.firstWhere((element) => element.uniqueId == uniqueId);
  }

  CategoriesDTO? categories(String uniqueId) {
    return loadedCategories
        .firstWhere((element) => element.uniqueId == uniqueId);
  }
}
