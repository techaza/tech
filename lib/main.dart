// import 'dart:async';

import 'package:fb/screens/Auth/login/login.dart';
import 'package:fb/screens/Auth/login/signin.dart';
import 'package:fb/screens/Auth/loginpage.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: start(),
  ));
}

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const hm()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: login());
  }
}

class hm extends StatelessWidget {
  const hm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('facebook')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            const Center(
              child: Image(
                width: 150,
                image: NetworkImage(
                  "https://imgs.search.brave.com/pen1OTXMGwC5ROAMeLThSrLRfnkcxRjRmV5yvTUO0WU/rs:fit:678:225:1/g:ce/aHR0cHM6Ly90c2Ux/LmV4cGxpY2l0LmJp/bmcubmV0L3RoP2lk/PU9JUC5VYTVBWGh0/R1JnUHVpc1pWbWV0/Y2xRSGFGTCZwaWQ9/QXBp",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Facebook helps you connect '),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            Image.asset(
              "assets/images/friends.png",
              width: 100,
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const loginpage())));
                    },
                    icon: const Icon(Icons.login_outlined),
                    label: const Text("Login")),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: ((context) => signin())));
                    },
                    icon: const Icon(Icons.login_outlined),
                    label: const Text("SignUp")),
              ],
            )
          ],
        ));
  }
}
