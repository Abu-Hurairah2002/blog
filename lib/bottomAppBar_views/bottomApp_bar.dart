// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:blog/constants/appColor.dart';
// import 'package:blog/utils/svgs.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
//
// class BottomappBarView extends StatefulWidget {
//   const BottomappBarView({super.key});
//
//   @override
//   State<BottomappBarView> createState() => _BottomappBarViewState();
// }
//
// class _BottomappBarViewState extends State<BottomappBarView> {
//   @override
//   Widget build(BuildContext context) {
//
//     Scaffold(
//       body: Container(), //destination screen
//       floatingActionButton: FloatingActionButton(onPressed: () {  },
//         //params
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         icons: iconList,
//         activeIndex: _bottomNavIndex,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.verySmoothEdge,
//         leftCornerRadius: 32,
//         rightCornerRadius: 32,
//         onTap: (index) => setState(() => _bottomNavIndex = index),
//         //other params
//       ),
//     );
//   }
// }
