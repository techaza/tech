import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class friends extends StatelessWidget {
  const friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Friends",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
              ),
              Image.asset(
                "assets/images/search (1).png",
                width: 30,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 198, 188, 188)),
                  child: Center(child: Text("Requests")),
                ),
              ),
              Container(
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 198, 188, 188)),
                child: Center(child: Text("Your friends")),
              )
            ],
          ),
          Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                  Icon(
                    Icons.people_outline,
                    size: 50,
                  ),
                  Text("No new requests",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text("Try uploading your phone contacts so you can find"),
                  Text(" your friends on Facebook."),
                  ElevatedButton(
                      onPressed: (() {}), child: Text("Upload Contacts")),
                  SizedBox(
                    height: 140,
                  ),
                  Text(
                      "Always upload your latest contacts. We'll use this info to suggest friends and provide and improve ads for you and others, and offer a better service.")
                ],
              ))
        ],
      ),
    ));
  }
}
