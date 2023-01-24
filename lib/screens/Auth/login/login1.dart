import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class login1 extends StatelessWidget {
  const login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3490dc),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Center(
            child: LottieBuilder.network(
                width: 600,
                "https://assets10.lottiefiles.com/packages/lf20_famhya.json"),
          ),
          Row(
            children: [
              
            ],
          )
        ],
      ),
    );
  }
}
