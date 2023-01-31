import 'package:flutter/material.dart';

class gen extends StatefulWidget {
  static String gender="";
  const gen({super.key});

  @override
  State<gen> createState() => _genState();
}

class _genState extends State<gen> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text("Male"),
          value: "male",
          groupValue: gen.gender,
          onChanged: (value) {
            setState(() {
              gen.gender = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text("Female"),
          value: "female",
          groupValue: gen.gender,
          onChanged: (value) {
            setState(() {
              gen.gender = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text("Other"),
          value: "other",
          groupValue: gen.gender,
          onChanged: (value) {
            setState(() {
              gen.gender = value.toString();
            });
          },
        )
      ],
    );
  }
}
