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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import 'contactUs/contact_screen.dart' as _i6;
import 'editProduct/edit_product.dart' as _i1;
import 'home/home.dart' as _i2;
import 'login/login_screen.dart' as _i4;
import 'productDetails/product_details_page.dart' as _i3;
import 'shop/shop_screen.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    EditProductScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EditProductScreen());
    },
    HomeScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    ProductDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailScreenRouteArgs>(
          orElse: () => ProductDetailScreenRouteArgs(
              productId: pathParams.getString('id')));
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    LoginScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginScreen());
    },
    ShopScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ShopScreen());
    },
    ContactScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ContactScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(EditProductScreenRoute.name, path: '/dashboard'),
        _i7.RouteConfig(HomeScreenRoute.name, path: '/', children: [
          _i7.RouteConfig('*#redirect',
              path: '*',
              parent: HomeScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i7.RouteConfig(ProductDetailScreenRoute.name, path: '/product/:id'),
        _i7.RouteConfig(LoginScreenRoute.name, path: '/login', children: [
          _i7.RouteConfig('*#redirect',
              path: '*',
              parent: LoginScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i7.RouteConfig(ShopScreenRoute.name, path: 'shop', children: [
          _i7.RouteConfig('*#redirect',
              path: '*',
              parent: ShopScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i7.RouteConfig(ContactScreenRoute.name, path: '/contactus', children: [
          _i7.RouteConfig('*#redirect',
              path: '*',
              parent: ContactScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ])
      ];
}

/// generated route for
/// [_i1.EditProductScreen]
class EditProductScreenRoute extends _i7.PageRouteInfo<void> {
  const EditProductScreenRoute()
      : super(EditProductScreenRoute.name, path: '/dashboard');

  static const String name = 'EditProductScreenRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeScreenRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i3.ProductDetailScreen]
class ProductDetailScreenRoute
    extends _i7.PageRouteInfo<ProductDetailScreenRouteArgs> {
  ProductDetailScreenRoute({_i9.Key? key, required String productId})
      : super(ProductDetailScreenRoute.name,
            path: '/product/:id',
            args: ProductDetailScreenRouteArgs(key: key, productId: productId),
            rawPathParams: {'id': productId});

  static const String name = 'ProductDetailScreenRoute';
}

class ProductDetailScreenRouteArgs {
  const ProductDetailScreenRouteArgs({this.key, required this.productId});

  final _i9.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailScreenRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreenRoute extends _i7.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(LoginScreenRoute.name, path: '/login', initialChildren: children);

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i5.ShopScreen]
class ShopScreenRoute extends _i7.PageRouteInfo<void> {
  const ShopScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(ShopScreenRoute.name, path: 'shop', initialChildren: children);

  static const String name = 'ShopScreenRoute';
}

/// generated route for
/// [_i6.ContactScreen]
class ContactScreenRoute extends _i7.PageRouteInfo<void> {
  const ContactScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(ContactScreenRoute.name,
            path: '/contactus', initialChildren: children);

  static const String name = 'ContactScreenRoute';
}
