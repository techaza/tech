import 'dart:async';
import 'package:fb/screens/Auth/login/login.dart';
import 'package:fb/screens/Auth/loginpage.dart';
import 'package:fb/screens/Auth/login/login1.dart';
import 'package:fb/screens/Auth/otp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginpage(),
  ));
}








// class hm extends StatelessWidget {
//   const hm({super.key});

//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('facebook')),
//         body: Row(
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 120),
//                   child: Image(
//                     width: 100,
//                     image: NetworkImage(
//                       "https://imgs.search.brave.com/pen1OTXMGwC5ROAMeLThSrLRfnkcxRjRmV5yvTUO0WU/rs:fit:678:225:1/g:ce/aHR0cHM6Ly90c2Ux/LmV4cGxpY2l0LmJp/bmcubmV0L3RoP2lk/PU9JUC5VYTVBWGh0/R1JnUHVpc1pWbWV0/Y2xRSGFGTCZwaWQ9/QXBp",
//                     ),
//                   ),
//                 ),
//                 Text('Facebook helps you connect '),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Row(
//                   children: [
//                     ElevatedButton.icon(
//                         onPressed: () {
//                           Navigator.of(context).push(MaterialPageRoute(
//                               builder: ((context) => home())));
//                         },
//                         icon: Icon(Icons.login_outlined),
//                         label: Text("Login")),
//                     SizedBox(
//                       width: 25,
//                     ),
//                     ElevatedButton.icon(
//                         onPressed: () {
//                           Navigator.of(context).push(MaterialPageRoute(
//                               builder: ((context) => home())));
//                         },
//                         icon: Icon(Icons.login_outlined),
//                         label: Text("SignUp")),
//                   ],
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }
