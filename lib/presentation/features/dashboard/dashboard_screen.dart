import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/dashboard/bloc/dashboard_bloc.dart';

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

// ignore: must_be_immutable
class DashboardDetailView extends StatelessWidget {
  DashboardViewModel viewModel;

  DashboardDetailView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Card(
                  color: Colors.blue,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LatoTextView(
                        textAlignment: TextAlign.center,
                        label: 'Total Products \n  ${viewModel.productCount}',
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Card(
                  color: Colors.yellow,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LatoTextView(
                        textAlignment: TextAlign.center,
                        label: 'Total Brands \n  ${viewModel.brands.length}',
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LatoTextView(
                        textAlignment: TextAlign.center,
                        label:
                            'Total Categories \n  ${viewModel.categories.length}',
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Card(
                  color: Colors.purple,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LatoTextView(
                        textAlignment: TextAlign.center,
                        label:
                            'Total ColorInfo \n  ${viewModel.colorInfo.length}',
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
