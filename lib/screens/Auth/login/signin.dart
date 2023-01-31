import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fb/contents/contents.dart';
import 'package:fb/screens/Auth/login/gen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:uuid/uuid.dart';
import 'profilepic.dart';

class signin extends StatefulWidget {
  signin({super.key});

  static String gender = "";
  static String name = "";
  static String email = "";
  static String phonenumber = "";
  static String age = "";
  static String uId = "";

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  var id = "";
  late TextEditingController usrcontroller,
      emailcontroller,
      phncontroller,
      agecontroller;
  late DatabaseReference dbrf;
  List<String> list = <String>['Male', 'Others', 'Female'];

  @override
  void initState() {
    // TODO: implement initState

    usrcontroller = TextEditingController();
    emailcontroller = TextEditingController();
    phncontroller = TextEditingController();
    agecontroller = TextEditingController();
  }

  Widget build(BuildContext context) {
    add() {
      Map<String, String> facebook = {
        'name': signin.name,
        'age': signin.age,
        'gender': gen.gender,
        'email': signin.email,
        'phone': signin.phonenumber,
        'profilepic': "",
        'uid': signin.uId
      };
      dbrf.push().set(facebook);
    }

    dbrf = FirebaseDatabase.instance.ref().child('Accounts');

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/teamwork.png",
              width: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              onChanged: ((value) {
                signin.name = value;
              }),
              controller: usrcontroller,
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                labelText: "Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextFormField(
                onChanged: ((value) {
                  signin.email = value;
                }),
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Email id",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            TextFormField(
              onChanged: ((value) {
                signin.phonenumber = value;
              }),
              controller: phncontroller,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                labelText: "Phone number",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextFormField(
                onChanged: ((value) {
                  signin.age = value;
                }),
                controller: agecontroller,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Age",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 184, 130, 127)),
              child: gen(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            ElevatedButton(
                onPressed: (() {
                  signin.uId = FirebaseAuth.instance.currentUser!.uid;
                  // ignore: unused_local_variable

                  add();

                  print("aa------$signin.uId");
                  print(agecontroller.text);

                  print(emailcontroller.text);

                  print(phncontroller.text);
                  print(gen.gender);
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: ((context, animation, secondaryAnimation) =>
                          prof())));
                }),
                child: Text("Register"))
          ]),
        ),
      ),
    );
  }
}
