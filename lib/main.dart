// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project/Pages/cart_page.dart';
import 'package:project/Pages/login.dart';

// import 'package:project/register.dart';
// import 'package:email_validator/email_validator.dart';
import 'package:project/Pages/Homepage.dart';
import 'package:project/Pages/shop_page.dart';
import 'package:project/components/navigation_provider.dart';
import 'package:project/models/shop.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
        // child : NavigationProvider() ,
      child: const MyApp(),
    ),


  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'Homepage',
        routes: {
          'login': (context) => MyLogin(),
          // 'register': (context) => MyRegister()
          'Homepage': (context) => MyHomepage(),
          'shop_page': (context) => ShopPage(),
          '/cart_page': (context) => CartPage(),
        });
  }
}
