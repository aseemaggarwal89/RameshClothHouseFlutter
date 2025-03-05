import 'package:auto_route/auto_route.dart';
// import 'package:rameshclothhouse/presentation/features/editProduct/edit_product.dart';
import 'package:rameshclothhouse/presentation/features/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc
  
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: DashboardRoute.page
    ),
    AutoRoute(
      page: EditProductRoute.page
    ),
    // AutoRoute(
    //   page: EditProductScreen,
    //   path: AppRoutes.createPage,
    // ),
    AutoRoute(
      page: HomeRoute.page,
      initial: false,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      initial: false,
      page: ProductDetailRoute.page,
    ),
    //authentification routes
    AutoRoute(
      initial: true,
      page: LoginRoute.page,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      initial: false,
      page: ShopRoute.page,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      initial: false,
      page: ContactRoute.page,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    // AutoRoute(
    //   initial: false,
    //   path: AppRoutes.dashboard,
    //   page: ProductDashboardScreen,
    //   children: [
    //     RedirectRoute(path: '*', redirectTo: ''),
    //   ],
    // ),
    // user routes with a nested router
    // AutoRoute(
    //   path: '/user',
    //   page: UserScreen,
    //   children: [
    //     AutoRoute(path: '', page: UserProfileScreen),
    //     AutoRoute(path: 'details', page: UserDetailsScreen),
    //     AutoRoute(path: 'friends', page: UserFriendsScreen),
    //     groupTabRouter,
    //     // redirect all other paths
    //     RedirectRoute(path: '*', redirectTo: 'profile'),
    //   ],
    // ),

    // redirect all other paths
    // RedirectRoute(path: '*', redirectTo: AppRoutes.home),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}