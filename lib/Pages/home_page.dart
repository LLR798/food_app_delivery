import 'package:flutter/material.dart';
import 'package:food_delivery_app/Widgets/custom_app_bar.dart';
import 'package:food_delivery_app/Widgets/custom_categories.dart';
import 'package:food_delivery_app/Widgets/custom_drawer.dart';
import 'package:food_delivery_app/Widgets/custom_newest_items.dart';
import 'package:food_delivery_app/Widgets/custom_popular_items.dart';
import 'package:food_delivery_app/Widgets/custom_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          // Custom AppBar Widget
          CustomAppBar(),

          // Custom Search Bar Widget
          CustomSearchBar(),

          // Newest Items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              'Lançamentos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Custom Newest Items Widget
          CustomNewestItems(),

          // Categories
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              'Categorias',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Custom Categories Widget
          CustomCategories(),

          // Popular Items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              'Populares',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          // Custom Popular Items Widget
          CustomPopularItems(),
        ],
      ),

      // Custom Drawer Widget
      drawer: CustomDrawer(),

      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF9A9A9A).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'cartPage');
          },
          backgroundColor: const Color(0xFFEAEAEA),
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: Color(0xFF0808DD),
          ),
        ),
      ),
    );
  }
}
