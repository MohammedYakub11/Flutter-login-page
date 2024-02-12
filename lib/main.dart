


import 'package:flutter/material.dart';
import 'package:project/login.dart';
// import 'package:project/register.dart';
// import 'package:email_validator/email_validator.dart';
import 'package:project/Homepage.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context) => MyLogin(),
      // 'register': (context) => MyRegister()
      'Homepage': (context) => MyHomepage(),
    },

  ));
}



