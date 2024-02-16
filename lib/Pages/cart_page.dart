import 'package:flutter/material.dart';
import 'package:project/models/product.dart';
import 'package:project/models/shop.dart';
import 'package:provider/provider.dart';

import '../components/my_drawer.dart';

class CartPage extends StatefulWidget {

   CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _selectedIndex = 1;

   void _handleDrawerItemSelection(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }

  //remove item from cart
  void removeItemFromCart(BuildContext context, Product product) {
//show a dialog box to ask user to confirm to remove from cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Remove this item from your cart?"),
        actions: [
          //cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),

          //yes button
          MaterialButton(
            onPressed: () {
              // pop dialon box
              Navigator.pop(context);
              // add to cart
              context.read<Shop>().removeFromCart(product);
            },
            child: Text("Yes"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Cart Page"),
      ),
      drawer: MyDrawer(onItemSelected: _handleDrawerItemSelection),
      // drawer: MyDrawer(onItemSelected: (index) {
      //   _selectedDrawerIndex = index;
      // },),
      body: Column(children: [
        //cart list
        Expanded(
          child: cart.isEmpty
              ? const Center(child: Text("Your cart is empty.."))
              : ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    //get individual items
                    final item = cart[index];

                    //return as a list tile
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.price.toStringAsFixed(2)),
                      trailing: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => removeItemFromCart(context, item),
                      ),
                    );
                  },
                ),
        )
      ]),
    );
  }
}
