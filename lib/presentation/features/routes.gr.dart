// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i7;
import 'package:rameshclothhouse/presentation/features/contactUs/contact_screen.dart'
    as _i5;
import 'package:rameshclothhouse/presentation/features/home/home.dart' as _i1;
import 'package:rameshclothhouse/presentation/features/login/login_screen.dart'
    as _i3;
import 'package:rameshclothhouse/presentation/features/productDetails/product_details_page.dart'
    as _i2;
import 'package:rameshclothhouse/presentation/features/shop/shop_screen.dart'
    as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    ProductDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailScreenRouteArgs>(
          orElse: () => ProductDetailScreenRouteArgs(
              productId: pathParams.getString('id')));
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    LoginScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.LoginScreen());
    },
    ShopScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ShopScreen());
    },
    ContactScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ContactScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeScreenRoute.name, path: '/', children: [
          _i6.RouteConfig('*#redirect',
              path: '*',
              parent: HomeScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i6.RouteConfig(ProductDetailScreenRoute.name, path: '/product/:id'),
        _i6.RouteConfig(LoginScreenRoute.name, path: '/login', children: [
          _i6.RouteConfig('*#redirect',
              path: '*',
              parent: LoginScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i6.RouteConfig(ShopScreenRoute.name, path: 'shop', children: [
          _i6.RouteConfig('*#redirect',
              path: '*',
              parent: ShopScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i6.RouteConfig(ContactScreenRoute.name, path: '/contactus', children: [
          _i6.RouteConfig('*#redirect',
              path: '*',
              parent: ContactScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i6.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(HomeScreenRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.ProductDetailScreen]
class ProductDetailScreenRoute
    extends _i6.PageRouteInfo<ProductDetailScreenRouteArgs> {
  ProductDetailScreenRoute({_i8.Key? key, required String productId})
      : super(ProductDetailScreenRoute.name,
            path: '/product/:id',
            args: ProductDetailScreenRouteArgs(key: key, productId: productId),
            rawPathParams: {'id': productId});

  static const String name = 'ProductDetailScreenRoute';
}

class ProductDetailScreenRouteArgs {
  const ProductDetailScreenRouteArgs({this.key, required this.productId});

  final _i8.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailScreenRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i6.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(LoginScreenRoute.name, path: '/login', initialChildren: children);

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i4.ShopScreen]
class ShopScreenRoute extends _i6.PageRouteInfo<void> {
  const ShopScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(ShopScreenRoute.name, path: 'shop', initialChildren: children);

  static const String name = 'ShopScreenRoute';
}

/// generated route for
/// [_i5.ContactScreen]
class ContactScreenRoute extends _i6.PageRouteInfo<void> {
  const ContactScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(ContactScreenRoute.name,
            path: '/contactus', initialChildren: children);

  static const String name = 'ContactScreenRoute';
}
