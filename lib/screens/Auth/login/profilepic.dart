import 'dart:io';

import 'package:fb/screens/Auth/login/signin.dart';
import 'package:fb/screens/home.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class prof extends StatefulWidget {
  static String imageurl = "";
  const prof( {super.key});

  @override
  State<prof> createState() => _profState();
}

class _profState extends State<prof> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbrf = FirebaseDatabase.instance.ref().child('Accounts');
    getAccount();
  }

  String? usrkey;

  ///////////////////////////////////////////////////////

  getAccount() async {
    print('-----------------${signin.uId}--------');
    await dbrf.orderByChild('uid').equalTo(signin.uId).once().then((value) {
      print('----------------');
      final vall = value.snapshot.value as Map?;
      if (vall != null) {
        vall.forEach((key, value) {
          print('----$key   $value-------');
          usrkey = key;
        });
      }
      print('----------------');
    });
  }

//////////////////////////////////////////////////////////

  late DatabaseReference dbrf;
  var url = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Text(
          "set your profile picture",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(prof.imageurl),
          ),
        ),
        ElevatedButton(
            onPressed: (() {
              uploadpic();
            }),
            child: Text("upload picture")),
        ElevatedButton(
            onPressed: (() {
              Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder: ((context, animation, secondaryAnimation) => home())));
            }),
            child: Text("Next")),
      ]),
    );
  }

  uploadpic() async {
    String Date = DateTime.now().toString();
    ImagePicker imagepicker = ImagePicker();
    XFile? imagefile = await imagepicker.pickImage(source: ImageSource.gallery);
    if (imagefile == null) return;
    Reference ref = FirebaseStorage.instance.ref();
    Reference directory = ref.child('profilepic');
    Reference ref_to_upload = directory.child("${Date}.jpg");
    ref_to_upload.putFile(File(imagefile.path));
    print("----------------------------------------------------");

    try {
      await ref_to_upload.putFile(File(imagefile.path));
      url = await ref_to_upload.getDownloadURL();
      setState(() {
        prof.imageurl = url;
        dbrf.child(usrkey!).update({'profilepic': prof.imageurl});
      });

      print(prof.imageurl);
    } catch (error) {}
  }
}
