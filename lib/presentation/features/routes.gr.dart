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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import 'contactUs/contact_screen.dart' as _i7;
import 'dashboard/dashboard_screen.dart' as _i1;
import 'editProduct/bloc/edit_product_bloc.dart' as _i10;
import 'editProduct/edit_product.dart' as _i2;
import 'home/home.dart' as _i3;
import 'login/login_screen.dart' as _i5;
import 'productDetails/product_details_page.dart' as _i4;
import 'shop/shop_screen.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    DashboardScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardScreen());
    },
    EditProductScreenRoute.name: (routeData) {
      final args = routeData.argsAs<EditProductScreenRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i2.EditProductScreen(key: args.key, viewModel: args.viewModel));
    },
    HomeScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    ProductDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailScreenRouteArgs>(
          orElse: () => ProductDetailScreenRouteArgs(
              productId: pathParams.getString('id')));
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    LoginScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LoginScreen());
    },
    ShopScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ShopScreen());
    },
    ContactScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ContactScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(DashboardScreenRoute.name, path: '/dashboard'),
        _i8.RouteConfig(EditProductScreenRoute.name, path: '/product/:id'),
        _i8.RouteConfig(HomeScreenRoute.name, path: '/', children: [
          _i8.RouteConfig('*#redirect',
              path: '*',
              parent: HomeScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i8.RouteConfig(ProductDetailScreenRoute.name, path: '/product/:id'),
        _i8.RouteConfig(LoginScreenRoute.name, path: '/login', children: [
          _i8.RouteConfig('*#redirect',
              path: '*',
              parent: LoginScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i8.RouteConfig(ShopScreenRoute.name, path: 'shop', children: [
          _i8.RouteConfig('*#redirect',
              path: '*',
              parent: ShopScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i8.RouteConfig(ContactScreenRoute.name, path: '/contactus', children: [
          _i8.RouteConfig('*#redirect',
              path: '*',
              parent: ContactScreenRoute.name,
              redirectTo: '',
              fullMatch: true)
        ])
      ];
}

/// generated route for
/// [_i1.DashboardScreen]
class DashboardScreenRoute extends _i8.PageRouteInfo<void> {
  const DashboardScreenRoute()
      : super(DashboardScreenRoute.name, path: '/dashboard');

  static const String name = 'DashboardScreenRoute';
}

/// generated route for
/// [_i2.EditProductScreen]
class EditProductScreenRoute
    extends _i8.PageRouteInfo<EditProductScreenRouteArgs> {
  EditProductScreenRoute(
      {_i9.Key? key, required _i10.AddProductViewModel viewModel})
      : super(EditProductScreenRoute.name,
            path: '/product/:id',
            args: EditProductScreenRouteArgs(key: key, viewModel: viewModel));

  static const String name = 'EditProductScreenRoute';
}

class EditProductScreenRouteArgs {
  const EditProductScreenRouteArgs({this.key, required this.viewModel});

  final _i9.Key? key;

  final _i10.AddProductViewModel viewModel;

  @override
  String toString() {
    return 'EditProductScreenRouteArgs{key: $key, viewModel: $viewModel}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i8.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeScreenRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.ProductDetailScreen]
class ProductDetailScreenRoute
    extends _i8.PageRouteInfo<ProductDetailScreenRouteArgs> {
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
/// [_i5.LoginScreen]
class LoginScreenRoute extends _i8.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(LoginScreenRoute.name, path: '/login', initialChildren: children);

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i6.ShopScreen]
class ShopScreenRoute extends _i8.PageRouteInfo<void> {
  const ShopScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(ShopScreenRoute.name, path: 'shop', initialChildren: children);

  static const String name = 'ShopScreenRoute';
}

/// generated route for
/// [_i7.ContactScreen]
class ContactScreenRoute extends _i8.PageRouteInfo<void> {
  const ContactScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(ContactScreenRoute.name,
            path: '/contactus', initialChildren: children);

  static const String name = 'ContactScreenRoute';
}
