import 'package:flutter/cupertino.dart';
import 'package:project/models/product.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    Product(name: "Glass", price: 99.99, description: "Item description description description description..", imagePath: 'assets/spec1.png'),
    Product(name: "T-shirt", price: 99.99, description: "Item description description description description..", imagePath: 'assets/tshirt1.png'),
    Product(name: "Watch", price: 99.99, description: "Item description description description description..", imagePath: 'assets/watch1.png'),
    Product(name: "Shoes", price: 99.99, description: "Item description  description description description..", imagePath: 'assets/shoe1.png'),
  ];

  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
