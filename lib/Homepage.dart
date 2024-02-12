import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.fill)),

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,

        drawer: Drawer(
          // elevation: 14.0,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text("myrazakhan@ideassion.com"),
                accountName: Text("Mohammed Yakub"),
              ),
              ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap:(){},),
              ListTile(leading: Icon(Icons.call), title: Text("Contact"), onTap:(){},),
              ListTile(leading: Icon(Icons.account_box), title: Text("Profile"), onTap:(){},),
              ListTile(leading: Icon(Icons.logout), title: Text("Log Out"), onTap:(){
                Navigator.pushNamed(context, 'login');

              },),

            ],
          ),
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                // padding: EdgeInsets.only(left: 30, top: 135),
                alignment: Alignment.center,

                child: Text(
                  'Welcome' ,
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}

