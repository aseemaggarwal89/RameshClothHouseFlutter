// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:rameshclothhouse/presentation/features/contactUs/contact_screen.dart'
    as _i1;
import 'package:rameshclothhouse/presentation/features/dashboard/dashboard_screen.dart'
    as _i2;
import 'package:rameshclothhouse/presentation/features/editProduct/bloc/edit_product_bloc.dart'
    as _i10;
import 'package:rameshclothhouse/presentation/features/editProduct/edit_product.dart'
    as _i3;
import 'package:rameshclothhouse/presentation/features/home/views/home_page.dart'
    as _i4;
import 'package:rameshclothhouse/presentation/features/login/login_screen.dart'
    as _i5;
import 'package:rameshclothhouse/presentation/features/productDetails/product_details_page.dart'
    as _i6;
import 'package:rameshclothhouse/presentation/features/shop/shop_screen.dart'
    as _i7;

/// generated route for
/// [_i1.ContactScreen]
class ContactRoute extends _i8.PageRouteInfo<void> {
  const ContactRoute({List<_i8.PageRouteInfo>? children})
    : super(ContactRoute.name, initialChildren: children);

  static const String name = 'ContactRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.ContactScreen();
    },
  );
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i3.EditProductScreen]
class EditProductRoute extends _i8.PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({
    _i9.Key? key,
    required _i10.AddProductViewModel viewModel,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         EditProductRoute.name,
         args: EditProductRouteArgs(key: key, viewModel: viewModel),
         initialChildren: children,
       );

  static const String name = 'EditProductRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditProductRouteArgs>();
      return _i3.EditProductScreen(key: args.key, viewModel: args.viewModel);
    },
  );
}

class EditProductRouteArgs {
  const EditProductRouteArgs({this.key, required this.viewModel});

  final _i9.Key? key;

  final _i10.AddProductViewModel viewModel;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, viewModel: $viewModel}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginScreen();
    },
  );
}

/// generated route for
/// [_i6.ProductDetailScreen]
class ProductDetailRoute extends _i8.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i9.Key? key,
    required String productId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         ProductDetailRoute.name,
         args: ProductDetailRouteArgs(key: key, productId: productId),
         rawPathParams: {'id': productId},
         initialChildren: children,
       );

  static const String name = 'ProductDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductDetailRouteArgs>(
        orElse:
            () => ProductDetailRouteArgs(productId: pathParams.getString('id')),
      );
      return _i6.ProductDetailScreen(key: args.key, productId: args.productId);
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.productId});

  final _i9.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i7.ShopScreen]
class ShopRoute extends _i8.PageRouteInfo<void> {
  const ShopRoute({List<_i8.PageRouteInfo>? children})
    : super(ShopRoute.name, initialChildren: children);

  static const String name = 'ShopRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.ShopScreen();
    },
  );
}
