import 'package:fb/screens/Auth/loginpage.dart';
import 'package:fb/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  var smscode = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
        ),
        Center(
            child: Text(
          "OTP Verification",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 15,
        ),
        Text("Enter the OTP recieved on your phone"),
        Pinput(
          length: 6,
          showCursor: true,
          onChanged: ((value) {
            smscode = value;
          }),
        ),
        SizedBox(
            width: 110,
            height: 30,
            child: ElevatedButton(
              onPressed: () async {
                try {
                  print("----------------------------");
                  print(loginpage.verify);
                  print("----------------------------");
                  print(smscode);
                  print("----------------------------");
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: loginpage.verify, smsCode: smscode);

                  // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);

                  Navigator.of(context).pushReplacement(PageRouteBuilder(
                      pageBuilder: ((context, animation, secondaryAnimation) =>
                          home())));
                } catch (e) {}
              },
              child: Text("Verify"),
            ))
      ]),
    );
  }
}
