import 'package:flutter/material.dart';
import 'package:food_delivery_final/pages/food/popular_food_detail.dart';
import 'package:food_delivery_final/pages/food/recommended_food_details.dart';
import 'package:food_delivery_final/pages/home/food_page_body.dart';
import 'package:food_delivery_final/pages/home/main_food_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'helper/dependencies.dart' as dep;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}

