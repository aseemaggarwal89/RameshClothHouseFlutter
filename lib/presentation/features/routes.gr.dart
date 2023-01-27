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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:rameshclothhouse/presentation/features/home/home.dart' as _i1;
import 'package:rameshclothhouse/presentation/features/login/login_screen.dart'
    as _i3;
import 'package:rameshclothhouse/presentation/features/productDetails/product_details_page.dart'
    as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeScreenRouteArgs>(
          orElse: () => const HomeScreenRouteArgs());
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.HomeScreen(key: args.key));
    },
    ProductDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailScreenRouteArgs>(
          orElse: () => ProductDetailScreenRouteArgs(
              productId: pathParams.getString('id')));
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    LoginScreenRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.LoginScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeScreenRoute.name, path: '/', children: [
          _i4.RouteConfig('*#redirect',
              path: '*',
              parent: HomeScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i4.RouteConfig(ProductDetailScreenRoute.name, path: '/product/:id'),
        _i4.RouteConfig(LoginScreenRoute.name, path: '/login', children: [
          _i4.RouteConfig('*#redirect',
              path: '*',
              parent: LoginScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i4.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i4.PageRouteInfo<HomeScreenRouteArgs> {
  HomeScreenRoute({_i5.Key? key, List<_i4.PageRouteInfo>? children})
      : super(HomeScreenRoute.name,
            path: '/',
            args: HomeScreenRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

class HomeScreenRouteArgs {
  const HomeScreenRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'HomeScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ProductDetailScreen]
class ProductDetailScreenRoute
    extends _i4.PageRouteInfo<ProductDetailScreenRouteArgs> {
  ProductDetailScreenRoute({_i5.Key? key, required String productId})
      : super(ProductDetailScreenRoute.name,
            path: '/product/:id',
            args: ProductDetailScreenRouteArgs(key: key, productId: productId),
            rawPathParams: {'id': productId});

  static const String name = 'ProductDetailScreenRoute';
}

class ProductDetailScreenRouteArgs {
  const ProductDetailScreenRouteArgs({this.key, required this.productId});

  final _i5.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailScreenRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i4.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(LoginScreenRoute.name, path: '/login', initialChildren: children);

  static const String name = 'LoginScreenRoute';
}
