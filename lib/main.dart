import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/cart_page.dart';
import 'package:food_delivery_app/Pages/home_page.dart';
import 'package:food_delivery_app/Pages/item_page.dart';
import 'package:food_delivery_app/Pages/newst_item_page.dart';


void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F3F3),
      ),
      routes: {
        '/' : (context) => const HomePage(),
        'cartPage' : (context) => const CartPage(),
        'itemPage' : (context) => const ItemPage(),
        'newestItemPage' : (context) => const NewestItemPage(),
      },
    );
  }
}
