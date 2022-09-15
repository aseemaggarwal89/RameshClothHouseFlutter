// import 'package:rameshclothhouse/data_layer/data_source/local/database.dart';
// import 'package:rameshclothhouse/data_layer/data_source/models/product_dto.dart';
// import 'package:rameshclothhouse/objectbox.g.dart';

// import '../../domain_layer/domain_layer.dart';

// class ProductDataDbRepository extends IProductDataDBRepository {
//   final ProductDataBaseRoom dataBaseRoom;

//   ProductDataDbRepository(this.dataBaseRoom);

//   @override
//   List<ProductDTO> fetchProducts() {
//     return dataBaseRoom.fetchAllItems();
//   }

//   @override
//   ProductDTO? fetchproduct(String productId) {
//     return dataBaseRoom.querySingleData(productId);
//   }

//   @override
//   Future<int> saveProduct(ProductDTO product) {
//     return dataBaseRoom.insert(product);
//   }

//   @override
//   Future<List<int>> saveProducts(List<ProductDTO> products) {
//     return dataBaseRoom.insertManyAsync(products);
//   }
// }

// class ProductDataBaseRoom extends DatabaseRoom<ProductDTO> {
//   ProductDTO? querySingleData(String productId) {
//     Query<ProductDTO> query =
//         storageBox.query(ProductDTO_.uniqueId.equals(productId)).build();
//     ProductDTO? product = query.findFirst();
//     query.close();
//     return product;
//   }

//   List<ProductDTO> queryListData(List<String> productIds) {
//     Query<ProductDTO> query =
//         storageBox.query(ProductDTO_.uniqueId.oneOf(productIds)).build();
//     List<ProductDTO> products = query.find();
//     query.close();
//     return products;
//   }
// }
