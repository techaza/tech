import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  var url1 = "";
  var url = "";
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  bool loading = false;

  Future<void> Uploadimage() async {
    final pick = ImagePicker();
    final pickedImage = await pick.pickImage(source: ImageSource.gallery);
    if (pickedImage == null) return null;
    String filename = pickedImage.name;
    File imageFile = File(pickedImage.path);
    try {
      setState(() {
        loading = true;
      });

      String Date = DateTime.now().toString();

      await firebaseStorage.ref("post/${Date}.jpg").putFile(imageFile);
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("successfully added")));
    } catch (e) {}
  }

///////////////////////////////////////////////////////////////////////////

 




//////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Uploadimage();
                },
                child: Text("Upload"))),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
              onPressed: () {
               
              },
              child: Text("View")),
        ),
      ]),
    );
  }
}
