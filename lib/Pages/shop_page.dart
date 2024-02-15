import 'package:flutter/material.dart';
import 'package:project/components/my_drawer.dart';
import 'package:project/components/my_product_tile.dart';
import 'package:project/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Shop Page"),
          actions: [
            //go to cart button
            IconButton(
                onPressed: () => Navigator.pushNamed(context, '/cart_page'),
                icon: const Icon(Icons.shopping_cart_outlined))
          ],
        ),
        drawer: MyDrawer(),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const SizedBox(height: 25),
            Center(
              child: Text(
                "Pick from a selected list of premium products",
                style: TextStyle(
                  color: Color(0xff4c505b),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            //shop subtitle

            //product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  padding: EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    //get each individual product from shop
                    final product = products[index];
                    // return as a product tile UI
                    return MyProductTile(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  padding: EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    //get each individual product from shop
                    final product = products[index];
                    // return as a product tile UI
                    return MyProductTile(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  padding: EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    //get each individual product from shop
                    final product = products[index];
                    // return as a product tile UI
                    return MyProductTile(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  padding: EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    //get each individual product from shop
                    final product = products[index];
                    // return as a product tile UI
                    return MyProductTile(product: product);
                  }),
            ),


          ],
        ));
  }
}



