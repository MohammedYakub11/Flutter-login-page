import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/components/my_button.dart';
import 'package:project/components/my_drawer.dart';


class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _selectedIndex = 0;
  late DateTime today; //for date and time
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    today = DateTime.now();
  }

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
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                selected: _selectedIndex == 0,
                onTap: () {
                  _onItemTapped(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Contact"),
                selected: _selectedIndex == 1,
                onTap: () {
                  _onItemTapped(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Bottom Sheet"),
                selected: _selectedIndex == 2,
                onTap: () {
                  _displayBottomSheet(context);
                  _onItemTapped(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
                onTap: () {
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_bag,
                size: 72,
                color: Color(0xff4c505b),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "THE SHOP",
                style: TextStyle(
                  color: Color(0xff4c505b),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Premium Quality Products",
                style: TextStyle(color: Color(0xff4c505b), fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                  onTap: () => Navigator.pushNamed(context, 'shop_page'),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )),


              //show date and time
              Text('${DateFormat('dd MMM yyy').format(today)}'), //date
              Text('${DateFormat('hh:mm').format(today)}') //time
            ],
          ),
        ),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top:Radius.circular(30))
      ),
      builder: (context) => Container(
        height: 200,

        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Hello'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the bottom sheet
              },
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}


