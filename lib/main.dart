import 'package:blog/authentication_screens/sign_up.dart';
import 'package:blog/blog_post.dart';
import 'package:blog/bottomAppBar_views/bottomApp_bar.dart';
import 'package:blog/bottomAppBar_views/trending_screen.dart';
import 'package:blog/edit_post.dart';
import 'package:blog/my_post.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: TrendingScreenView(),
        );
      }
    );
  }
}
