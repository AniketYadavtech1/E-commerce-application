import 'package:ecommerce_appwith_rest_api/controller/product_controller.dart';
import 'package:ecommerce_appwith_rest_api/newScreen/newproduct.dart';
import 'package:ecommerce_appwith_rest_api/screen/home_screen.dart';
import 'package:ecommerce_appwith_rest_api/screen/product_screen.dart';
import 'package:ecommerce_appwith_rest_api/screen/screens.dart';
import 'package:ecommerce_appwith_rest_api/screen1/home_screen1.dart';
import 'package:ecommerce_appwith_rest_api/screen1/home_screen2.dart';
import 'package:ecommerce_appwith_rest_api/screen1/screens1.dart';
import 'package:flutter/material.dart';

import 'screen1/category.dart';
import 'screen1/category2_List.dart';
import 'screen1/category3_loop.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Screens(),
      // home: Screens1(),
      // home: HomeScreen1(),
      // home: HomeScreen2(),
      // home: CategoryView(),
      // home: Category2(),
      // home: Category3Loop(),
      home:Newproduct(),
    
    );
  }
}