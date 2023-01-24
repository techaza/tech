import 'package:fb/screens/mainhome/Listedhome.dart';
import 'package:fb/screens/mainhome/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mainhome extends StatelessWidget {
  const mainhome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://imgs.search.brave.com/YGKhnO_6YocUrIld7xtubljKSHX3DTP47Uts-LzH2l0/rs:fit:592:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5E/VGxBUGluZHkxRE1u/eE5xMk8zRnpBSGFG/NyZwaWQ9QXBp"),
            ),
            Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 253, 253)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "      Write something here   ",
                      border: InputBorder.none),
                )),
            Icon(
              Icons.image,
              color: Colors.green,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Divider(
            thickness: 10,
            color: Colors.grey,
          ),
        ),
        slider1(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Divider(
            thickness: 10,
            color: Colors.grey,
          ),
        ),
        Listed1()
      ]),
    );
  }
}
