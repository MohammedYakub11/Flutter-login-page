import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formKey = GlobalKey<FormState>();
  String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Please enter an email address.';
    }
    if(!EmailValidator.validate(value)){
      return 'Please enter an email address.';
    }
    return null;
  }

  String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Please enter a password.';
    }
    if(value.length <8){
      return 'Password must be atleast 8 characters long.';
    }
    return null;
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
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
          ],
        ),
      ),
      body: Center(
        child: Container(
          // constraints: BoxConstraints(maxWidth: 1000),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/login.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 50, top: 135),
                child: Text(
                  'Welcome\n      Back!',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35,
                  ),
                  constraints: BoxConstraints(maxWidth: 500),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),
                        ),
                        validator: validateEmail,
                        // {
                        //   // if(value!.isEmpty || !RegExp(r'^[\w-\.-]+@([\w-]+\.)+[\w]{2,6}+$').hasMatch(value!)){
                        //   //   return "Enter Correct Email";
                        //   // }
                        //   // else{
                        //   //   return null;
                        //   // }
                        //
                        // },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: validatePassword,
                        // {
                        //   if(value!.isEmpty || value.length < 6){
                        //     return "Password must be at least 6 characters long";
                        //   }
                        //   else{
                        //     return null;
                        //   }
                        // },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Sign In',
                              style: TextStyle(
                                color: Color(0xff4c505b),
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff4c505b),
                              child: IconButton(
                                color: Colors.white,
                                onPressed: () {
                                  if (
                                  formKey.currentState!.validate()
                                  )
                                  {
                                    print("Welcome");
                                  }

                                },
                                icon: Icon(Icons.arrow_forward),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color(0xff4c505b),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color(0xff4c505b),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
