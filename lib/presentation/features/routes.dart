import 'package:auto_route/auto_route.dart';
import 'package:rameshclothhouse/presentation/features/login/login_screen.dart';
import 'package:rameshclothhouse/presentation/features/userScreen/user_screen.dart';

import 'home/home.dart';

class AppRoutes {
  static const home = '/';
  static const login = '/login';
  static const shop = 'shop';
  static const cart = 'cart';
  static const favourites = 'favourites';
  static const productList = 'productList';
  static const product = 'product';
  static const profile = 'profile';
  static const checkout = 'checkout';
  static const signup = 'signup';
  static const forgotPassword = 'forgot_pass';
  static const filters = 'filters';
}

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

    //authentification routes
    AutoRoute(
      initial: false,
      path: AppRoutes.login,
      page: LoginScreen,
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
