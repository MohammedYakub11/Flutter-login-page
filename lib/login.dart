// import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formKey = GlobalKey<FormState>();
  final _formfield= GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      body: Center(
        child: Container(

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
                padding: EdgeInsets.only(left: 50, top: 150),
                child: Text(
                  'Sign In!',
                  style: TextStyle(color: Colors.white, fontSize: 35),
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


                  child: Form(
                    key: _formfield,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),
                          prefixIcon: Icon(Icons.email_outlined),

                        ),
                        validator: (value)
                        {
                          bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%^&*+_-`'/?={|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                          if(value.isEmpty){
                            return "Enter Email";
                          }

                          if(!emailValid){
                            return "Enter valid Email";
                          }
                        },

                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        obscureText: passToggle,
                        keyboardType: TextInputType.emailAddress,
                        controller: passController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: InkWell(
                            onTap: (){
                              setState((){
                                passToggle= !passToggle;

                              });
                            },
                            child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),

                          ),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter Password";
                          }
                          else if(passController.text.length <6){
                            return "Password must be at least 6 characters long";
                          }
                        },

                      ),

                      //
                      SizedBox(
                        height: 40,
                      ),

                      InkWell(
                        onTap: (){
                          if(_formfield.currentState!.validate()){
                            print('Success');
                            emailController.clear();
                            passController.clear();
                          }
                        },

                      child: Center(
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
                                  _formfield.currentState!.validate()
                                  )
                                  {
                                    Navigator.pushNamed(context, 'Homepage');

                                  }

                                },
                                icon: Icon(Icons.arrow_forward),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     TextButton(
                      //       onPressed: () {
                      //         Navigator.pushNamed(context, 'Homepage');
                      //       },
                      //       child: Text(
                      //         'Sign Up',
                      //         style: TextStyle(
                      //           decoration: TextDecoration.underline,
                      //           fontSize: 18,
                      //           color: Color(0xff4c505b),
                      //         ),
                      //       ),
                      //     ),
                      //     // TextButton(
                      //     //   onPressed: () {},
                      //     //   child: Text(
                      //     //     'Forgot Password',
                      //     //     style: TextStyle(
                      //     //       decoration: TextDecoration.underline,
                      //     //       fontSize: 18,
                      //     //       color: Color(0xff4c505b),
                      //     //     ),
                      //     //   ),
                      //     // ),
                      //   ],
                      // ),
                    ],
                  ),
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
