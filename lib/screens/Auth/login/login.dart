import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Center(
            child: LottieBuilder.network(
                width: 60,
                "https://assets9.lottiefiles.com/private_files/lf30_vrpt6mk6.json"),
          )
        ],
      ),
    );
  }
}
