// import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';
//
//
// class MyRegister extends StatefulWidget {
//   const MyRegister({super.key});
//
//   @override
//   State<MyRegister> createState() => _MyRegisterState();
// }
//
// class _MyRegisterState extends State<MyRegister> {
//   final formKey = GlobalKey<FormState>();
//   String? validateEmail(String? value){
//     if(value == null || value.isEmpty){
//       return 'Please enter an email address.';
//     }
//     if(!EmailValidator.validate(value)){
//       return 'Please enter an email address.';
//     }
//     return null;
//   }
//
//   String? validatePassword(String? value){
//     if(value == null || value.isEmpty){
//       return 'Please enter a password.';
//     }
//     if(value.length <8){
//       return 'Password must be atleast 8 characters long.';
//     }
//     return null;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container (
//
//       alignment: Alignment.center,
//
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('assets/register.png'), fit: BoxFit.fill)),
//
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         backgroundColor: Colors.transparent,
//         body: Stack(
//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 50, top: 40),
//               child: Text(
//                 'Create\nAccount!',
//                 style: TextStyle(color: Colors.white, fontSize: 33),
//               ),
//             ),
//             SingleChildScrollView(
//
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.28,
//                     right:35, left:35
//                 ),
//                 constraints: BoxConstraints(maxWidth: 500),
//                 child: Column(
//                   children: [
//                     TextField(
//                       decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.black)
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.white)
//                           ),
//                           hintText:'Name',
//                           hintStyle: TextStyle(
//                               color: Colors.white
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//
//                     TextField(
//                       decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.black)
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.white)
//                           ),
//
//                           hintText:'Email',
//                           hintStyle: TextStyle(
//                               color: Colors.white
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                       validator: validateEmail,
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.black)
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.white)
//                           ),
//
//                           hintText:'Password',
//                           hintStyle: TextStyle(
//                               color: Colors.white
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                       validator: validatePassword,
//
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Sign In',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 27,
//                               fontWeight: FontWeight.w700),
//                         ),
//                         CircleAvatar(
//                           radius: 25,
//                           backgroundColor: Color(0xff4c505b),
//                           child: IconButton(
//                             color: Colors.white,
//                             onPressed: (){},
//                             icon: Icon(Icons.arrow_forward),
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextButton(onPressed: (){
//                           Navigator.pushNamed(context, 'login');
//                         }, child: Text('Sign Up',
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             fontSize: 18,
//                             color: Colors.white,
//                           ),)),
//
//                       ],
//                     )
//
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//
//     );
//   }
// }
