// import 'package:rameshclothhouse/data_repository.dart/authentication_repository.dart';
// import 'package:rameshclothhouse/models/order_dto.dart';
// import 'package:rameshclothhouse/networkLayer/appnetworkapi/app_api_request_type.dart';

// import '../../confirguration/app_configuration.dart';
// import '../../models/add_product_response.dart';
// import '../../models/get_orders_response.dart';
// import '../appnetworkapi/api_result.dart';

// abstract class IOrdersAPIRepository {
//   Future<ApiResult<AddResponse>> addOrderRequest(OrderItemDTO order) async {
//     throw UnimplementedError();
//   }

//   Future<ApiResult<GetOrdersResponse>> fetchOrders() async {
//     throw UnimplementedError();
//   }
// }

// abstract class OrdersAPIRepositoryInjection {}

// extension OrdersAPIRepositoryInjectionExtension
//     on OrdersAPIRepositoryInjection {
//   IOrdersAPIRepository get ordersApiRepository {
//     return getIt<IOrdersAPIRepository>();
//   }
// }

// class OrdersAPIRepository extends IOrdersAPIRepository
//     implements NetworkManagerInjection, AuthenticationRepositoryInjection {
//   @override
//   Future<ApiResult<AddResponse>> addOrderRequest(OrderItemDTO order) async {
//     final user = await authenticationRepository.loginUser;

//     var request = ApiRequestType.order(
//       HttpMethod.post,
//       urlSegment: user?.id,
//     );
//     ApiResult<AddResponse> apiResult =
//         await networkManager.loadRequest(request, body: order.toJson());

//     return apiResult;
//   }

//   @override
//   Future<ApiResult<GetOrdersResponse>> fetchOrders() async {
//     final user = await authenticationRepository.loginUser;

//     var request = ApiRequestType.order(
//       HttpMethod.get,
//       urlSegment: user?.id,
//     );
//     ApiResult<GetOrdersResponse> apiResult =
//         await networkManager.loadRequest(request);
//     return apiResult;
//   }
// }
