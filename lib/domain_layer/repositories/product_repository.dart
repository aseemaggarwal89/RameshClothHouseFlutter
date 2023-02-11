import '../domain_layer.dart';

abstract class IProductAPIRepository {
  // Future<ApiResult<GetProductCountResponse>> getProductsCount(
  //     [ProductParamDTO? param]);
}

abstract class IProductDataDBRepository {
  ProductDTO? fetchproduct(String productId);
  List<ProductDTO> fetchProducts();
  Future<int> saveProduct(ProductDTO product);
  Future<List<int>> saveProducts(List<ProductDTO> products);
}
