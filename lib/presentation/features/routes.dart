import 'package:auto_route/auto_route.dart';
import 'package:rameshclothhouse/presentation/config/app_router.dart';
import 'package:rameshclothhouse/presentation/features/contactUs/contact_screen.dart';
import 'package:rameshclothhouse/presentation/features/login/login_screen.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/product_details_page.dart';
import 'package:rameshclothhouse/presentation/features/shop/shop_screen.dart';
import 'home/home.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      path: AppRoutes.home,
      initial: true,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      initial: false,
      path: AppRoutes.productDetail,
      page: ProductDetailScreen,
    ),
    //authentification routes
    AutoRoute(
      initial: false,
      path: AppRoutes.login,
      page: LoginScreen,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      initial: false,
      path: AppRoutes.shop,
      page: ShopScreen,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      initial: false,
      path: AppRoutes.contactUs,
      page: ContactScreen,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
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
    RedirectRoute(path: '*', redirectTo: AppRoutes.home),
  ],
)
class $AppRouter {}
