import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_router.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:rameshclothhouse/presentation/features/editProduct/edit_product.dart';
import 'package:rameshclothhouse/presentation/features/home/views/product_item_widget.dart';

import '../../../domain_layer/domain_layer.dart';
import '../editProduct/bloc/edit_product_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DashboardBloc>(
          create: ((context) =>
              DashboardBloc()..add(const DashboardEvent.getAllDetail())),
        ),
      ],
      child: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DashboardBloc, DashboardState>(
      listener: (context, state) {
        if (state is Initial) {
          context
              .read<DashboardBloc>()
              .add(const DashboardEvent.getAllDetail());
        }
      },
      child: BlocBuilder<DashboardBloc, DashboardState>(
          builder: ((context, state) {
        if (state is Loading) {
          return buildLoading();
        } else if (state is Initial) {
          return Container();
        } else if (state is Loaded) {
          DashboardViewModel viewModel = (state).viewModel;
          return DashboardDetailView(viewModel: viewModel);
        }
        return Container();
      })),
    );
  }
}

// class ProductHorizontalList extends StatelessWidget {

// }

// ignore: must_be_immutable
class DashboardDetailView extends StatelessWidget {
  DashboardViewModel viewModel;

  DashboardDetailView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TotalDataStatsWidget(viewModel: viewModel),
        verticalSpaceMedium,
        Row(
          children: [
            HorizontalListView(
              viewModel: viewModel,
            ),
          ],
        )
      ],
    );
  }
}

class HorizontalListView extends StatelessWidget {
  List<ProductDTO> get products {
    return viewModel.products;
  }

  final DashboardViewModel viewModel;
  const HorizontalListView({
    super.key,
    required this.viewModel,
  });

  int numberOfItems(BuildContext context) {
    double width = screenWidth(context);
    num items = width / 150;
    return items.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LatoTextView(
          label: "Products",
          fontType: AppTextType.DisplayLarge,
          fontSize: 18,
        ),
        verticalSpaceRegular,
        SizedBox(
          height: 200,
          width: screenWidth(context),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: products.length > numberOfItems(context)
                ? numberOfItems(context)
                : products.length + 1,
            itemBuilder: (ctx, i) {
              final item = products[i];
              if (i == numberOfItems(context) - 1) {
                return const CardView(title: 'View All', color: Colors.grey);
              } else {
                return ProductItemView(
                  product: item,
                  size: const Size(150, 150),
                  onItemClicked: (String value) {},
                );
              }
            },
          ),
        ),
        verticalSpaceRegular,
        ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey)),
            onPressed: () {
              AppNavigator.navigateToEditPage(AddProductViewModel(
                viewModel.categories,
                viewModel.brands,
                viewModel.colorInfo,
              ));
            },
            child: const LatoTextView(
              label: 'Add Product',
            )),
      ],
    );
  }
}

class TotalDataStatsWidget extends StatelessWidget {
  const TotalDataStatsWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final DashboardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardView(
          title: 'Total Products \n  ${viewModel.productCount}',
          color: Colors.blue,
        ),
        CardView(
            title: 'Total Brands \n  ${viewModel.brands.length}',
            color: Colors.yellow),
        CardView(
          title: 'Total Categories \n  ${viewModel.categories.length}',
          color: Colors.green,
        ),
        CardView(
          title: 'Total ColorInfo \n  ${viewModel.colorInfo.length}',
          color: Colors.purple,
        ),
      ],
    );
  }
}

class CardView extends StatelessWidget {
  final String title;
  final Color color;

  const CardView({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
          color: color,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LatoTextView(
                textAlignment: TextAlign.center,
                label: title,
              ),
            ),
          )),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Widget child;
  final Size size;

  const CardWidget({
    Key? key,
    required this.title,
    required this.color,
    required this.child,
    this.size = const Size(100, 100),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Card(
          color: color,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          )),
    );
  }
}
