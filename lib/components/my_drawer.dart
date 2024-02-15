

import 'package:flutter/material.dart';
import 'package:project/components/my_list_tile.dart';

import '../Pages/cart_page.dart';
import '../Pages/shop_page.dart';
// import 'package:project/components/navigation_item.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _selectedIndex = 0;
 void _onItemTapped(int index){
   setState(() {
     _selectedIndex=index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ]),
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //drawer header logo
                Column(
                  children: [
                    DrawerHeader(
                      child: Center(
                        child: Icon(
                          Icons.shopping_bag,
                          size: 72,
                          color: Color(0xff4c505b),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    //shop tile
                    Container(
                      child: MyListTile(
                        text: "Shop",
                        selected: _selectedIndex == 0,
                        // item: NavigationItem.shop,
                        icon: Icons.home,
                        onTap: () {
                          _onItemTapped(0);
                          //pop drawer first
                          Navigator.pop(context);
                          //go to shop page
                          Navigator.pushNamed(context, 'shop_page');
                        },

                      ),
                    ),

                    //cart tile
                    MyListTile(
                      text: "My Cart",
                      selected: _selectedIndex == 1,
                      // item: NavigationItem.cart,
                      icon: Icons.shopping_cart,
                      onTap: () {
                        _onItemTapped(1);
                        //pop drawer first
                        Navigator.pop(context);
                        //go to cart page
                        Navigator.pushNamed(context, '/cart_page');
                      },
                    ),

                  ],
                ),
                //exit
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: MyListTile(
                    text: "Exit",
                    selected: _selectedIndex == 2,
                    // item: NavigationItem.exit,
                    icon: Icons.logout,
                    onTap: () {_onItemTapped(2);Navigator.pushNamedAndRemoveUntil(
                        context, 'Homepage', (route) => false);}
                  ),
                )
              ],
            ),
          ),
        ));
  }
}






