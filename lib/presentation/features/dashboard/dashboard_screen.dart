// import 'package:animations/animations.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:rameshclothhouse/presentation/components/app_controller.dart';
// import 'package:rameshclothhouse/presentation/core/resource/app_assets.dart';

// class DashboardView extends StatefulWidget {
//   const DashboardView({Key? key}) : super(key: key);

//   @override
//   State<DashboardView> createState() => _DashboardViewState();
// }

// class _DashboardViewState extends State<DashboardView> {
//   final Map<int, Widget> _viewCache = <int, Widget>{};
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     // return Controller(
//     //   title: 'Ramesh Cloth House',
//     //   child: ,
//     // );
//     return Scaffold(
//         key: _scaffoldKey,
//         appBar: HealofyAppBar(
//           leadingIcon: R.ASSETS_ICON_NAV_MENU_SVG,
//           titleIcon: R.ASSETS_ICON_HEALOFY_TITLE_LOGO_DARK_SVG,
//           onBack: () {
//             _scaffoldKey.currentState?.openDrawer();
//           },
//           showCartIcon: true,
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: SvgPicture.asset(R.ASSETS_ICON_BOOKMARKS_SVG)),
//             IconButton(
//               onPressed: model.navigateToProfile,
//               icon: SvgPicture.asset(R.ASSETS_ICON_PROFILE_SVG),
//             ),
//           ],
//         ),
//         drawer: const DrawerView(),
//         body: PageTransitionSwitcher(
//           duration: const Duration(microseconds: 300),
//           reverse: false,
//           transitionBuilder: (child, primary, secondary) {
//             return SharedAxisTransition(
//               animation: primary,
//               secondaryAnimation: secondary,
//               transitionType: SharedAxisTransitionType.horizontal,
//               child: child,
//             );
//           },
//           child: getViewForIndex(model.currentIndex),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           color: kcWhite,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: TextButton.icon(
//                   onPressed: () => model.setIndex(0),
//                   icon: SvgPicture.asset(
//                     model.currentIndex == 0
//                         ? R.ASSETS_ICON_HOME_SELECTED_SVG
//                         : R.ASSETS_ICON_HOME_SVG,
//                   ),
//                   label: LatoTextView.bold(
//                     label: 'Home',
//                     color: model.currentIndex == 0 ? kcBlack : kcLiteText,
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 50.0,
//                 width: 1.0,
//                 margin: const EdgeInsets.symmetric(vertical: 4.0),
//                 color: kcPaleGrey,
//               ),
//               Expanded(
//                 child: TextButton.icon(
//                   onPressed: () => model.setIndex(1),
//                   icon: SvgPicture.asset(
//                     model.currentIndex == 1
//                         ? R.ASSETS_ICON_MALL_SELECTED_SVG
//                         : R.ASSETS_ICON_MALL_SVG,
//                   ),
//                   label: LatoTextView.bold(
//                     label: 'Mall',
//                     color: model.currentIndex == 1 ? kcBlack : kcLiteText,
//                     fontSize: 16.0,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       viewModelBuilder: () => DashboardViewModel(),
//     );
//   }

//   Widget getViewForIndex(int index) {
//     if (!_viewCache.containsKey(index)) {
//       switch (index) {
//         case 0:
//           _viewCache[index] = const HomeView();
//           break;
//         case 1:
//           _viewCache[index] = const MallView();
//           break;
//       }
//     }
//     return _viewCache[index]!;
//   }
// }
