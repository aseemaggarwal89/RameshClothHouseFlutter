import 'package:rameshclothhouse/main.dart';
import 'package:rameshclothhouse/presentation/features/editProduct/bloc/edit_product_bloc.dart';
import 'package:rameshclothhouse/presentation/features/editProduct/edit_product.dart';
import 'package:rameshclothhouse/presentation/features/routes.gr.dart';

import '../components/appNavBar/app_menu_view_model.dart';

class AppNavigator {
  static final appRouter = getIt<AppRouter>();
  static void navigateOnSelectedMenu(MenuItemType menuItemType) {
    switch (menuItemType) {
      case MenuItemType.home:
        AppNavigator.navigateToHome();
        break;
      case MenuItemType.shop:
        navigateToShop();
        break;
      case MenuItemType.about:
        // TODO: Handle this case.
        break;
      case MenuItemType.contactUs:
        navigateToContactUs();
        break;
      case MenuItemType.dashboard:
        navigateToDashboard();
        break;
    }
  }

  static void navigateToProductDetail(
    String producId,
  ) {
    appRouter.navigate(ProductDetailScreenRoute(
      productId: producId,
    ));
  }

  static void navigateToHome() {
    getIt<AppRouter>().navigate(const HomeScreenRoute());
  }

  static void navigateToShop() {
    getIt<AppRouter>().navigate(const ShopScreenRoute());
  }

  static void navigateToContactUs() {
    getIt<AppRouter>().navigate(const ContactScreenRoute());
  }

  static void navigateToLogin() {
    getIt<AppRouter>().navigate(const LoginScreenRoute());
  }

  static void navigateToDashboard() {
    getIt<AppRouter>().navigate(const DashboardScreenRoute());
  }

  static void navigateToEditPage(AddProductViewModel viewModel) {
    getIt<AppRouter>().navigate(EditProductScreenRoute(
      viewModel: viewModel,
    ));
  }
}

enum AppRouteType {
  home,
  login,
  shop,
  productDetail,
  contactUs,
  dashboard,
  editProduct
}

extension AppRoutesExtension on AppRouteType {
  String get path {
    switch (this) {
      case AppRouteType.home:
        return AppRoutes.home;
      case AppRouteType.login:
        return AppRoutes.login;
      case AppRouteType.shop:
        return AppRoutes.shop;
      case AppRouteType.productDetail:
        return AppRoutes.productDetail;
      case AppRouteType.contactUs:
        return AppRoutes.contactUs;
      case AppRouteType.dashboard:
        return AppRoutes.dashboard;
      case AppRouteType.editProduct:
        return AppRoutes.editPage;
    }
  }
}

class AppRoutes {
  static const home = '/';
  static const login = '/login';
  static const shop = 'shop';
  static const contactUs = '/contactus';
  // static const cart = 'cart';
  // static const favourites = 'favourites';
  // static const productList = 'productList';
  static const productDetail = '/product/:id';
  // static const profile = 'profile';
  // static const checkout = 'checkout';
  static const signup = 'signup';
  static const dashboard = '/dashboard';
  static const editPage = '/product/:id';
  static const createPage = '/product';
}
