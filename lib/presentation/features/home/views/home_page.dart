import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/app_controller.dart';
import 'package:rameshclothhouse/presentation/components/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/menu_drawer.dart';
import 'package:rameshclothhouse/presentation/components/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/components/top_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> menuItems = ['Home', 'Shop', 'About', 'Contact Us'];
  @override
  Widget build(BuildContext context) {
    return Controller(
        drawer: Responsive.isMobile(context)
            ? AppDrawer(menuItems: menuItems, selectedItem: 'Home')
            : null,
        desktopNavBar: DesktopAppBar(
            title: 'Home',
            child: TopNavBar(menuItems: menuItems, selectedItem: 'Home')),
        mobileNavBar: ControllerAppBar(title: 'Home'),
        child: Responsive(
            key: widget.key,
            mobile: const LatoTextView(
              label: 'adlknasldnasd',
              fontType: FontType.BOLD,
            ),
            tablet: Container(),
            desktop: Container()));
    // return Controller(
    //     title: 'Ramesh Cloth House',
    //     child: SingleChildScrollView(
    //       physics: const ClampingScrollPhysics(),
    //       child: Column(
    //         children: [
    //           Stack(
    //             children: [
    //               SizedBox(
    //                 height: screenHeight(context) * .9,
    //                 width: screenWidth(context),
    //                 child: Image.asset(
    //                   'assets/images/background.png',
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ));
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home Screen"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Home Screen',
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             // ElevatedButton(
//             //   onPressed: () => context.router.push(SignupScreenRoute()),
//             //   child: Text(
//             //     'Go to SignupScreen',
//             //   ),
//             // ),
//             // SizedBox(
//             //   height: 16,
//             // ),
//             // ElevatedButton(
//             //   onPressed: () => context.router.replace(UserScreenRoute()),
//             //   child: Text(`
//             //     'Login (UserScreen)',
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Controller(
//         title: "Home Screen",
//         child: BlocProvider<HomeBloc>(
//             create: (context) {
//               return HomeBloc()..add(HomeLoadEvent());
//             },
//             child: HomeWrapper()));
//     // return SafeArea(
//     //     child: OpenFlutterScaffold(
//     //   background: null,
//     //   title: null,
//     //   body: BlocProvider<HomeBloc>(
//     //       create: (context) {
//     //         return HomeBloc()..add(HomeLoadEvent());
//     //       },
//     //       child: HomeWrapper()),
//     //   bottomMenuIndex: 0,
//     // ));
//   }
// }


// class HomeWrapper extends StatefulWidget {
//   @override
//   _HomeWrapperState createState() => _HomeWrapperState();
// }

// class _HomeWrapperState extends OpenFlutterWrapperState<HomeWrapper> {
//   //State createState() => OpenFlutterWrapperState();

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(
//         builder: (BuildContext context, HomeState state) {
//       return getPageView(<Widget>[
//         Main1View(
//           changeView: changePage,
//           products: state is HomeLoadedState ? state.newProducts : <Product>[],
//         ),
//         Main2View(
//             changeView: changePage,
//             salesProducts:
//                 state is HomeLoadedState ? state.salesProducts : <Product>[],
//             newProducts:
//                 state is HomeLoadedState ? state.newProducts : <Product>[]),
//         Main3View(changeView: changePage)
//       ]);
//     });
//   }
// }
