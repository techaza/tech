import 'dart:io';

import 'package:fb/screens/mainhome/Listedhome.dart';
import 'package:fb/screens/mainhome/slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class mainhome extends StatefulWidget {
  const mainhome({super.key});
  static String? usrkey;
  static String? posturl;

  @override
  State<mainhome> createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {
  late DatabaseReference dbrf;
  List posts = [];
  late DatabaseReference postrf;
  String? uId;
  String? url;
  String? k;

  void initState() {
    // TODO: implement initState
    super.initState();

    dbrf = FirebaseDatabase.instance.ref().child('Accounts');
    postrf = FirebaseDatabase.instance.ref().child('posts');
    getAccount();
    setState(() {
      getposts();
    });
    // postupload();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: mainhome.usrkey != null
                  ? NetworkImage(mainhome.usrkey!)
                  : const AssetImage("assets/images/book.png") as ImageProvider,
            ),
            Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 253, 253)),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "      Write something here   ",
                      border: InputBorder.none),
                )),
            IconButton(
              onPressed: (() => uploadpic()),
              icon: const Icon(Icons.image),
              color: Colors.green,
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 7),
          child: Divider(
            thickness: 10,
            color: Colors.grey,
          ),
        ),
        const slider1(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 7),
          child: Divider(
            thickness: 10,
            color: Colors.grey,
          ),
        ),
        Listed1(
          posts: posts,
        )
      ]),
    );
  }
  ///////////////////////////////////////////////////////

  Future<void> getAccount() async {
    uId = FirebaseAuth.instance.currentUser!.uid;
    // print("------------------------------------------");
    // print("------------------------------------------");
    // print('-----------------${uId}--------');
    await dbrf.orderByChild('uid').equalTo(uId).once().then((value) {
      print('----------------');
      final vall = value.snapshot.value as Map?;
      // print("-------------------$vall-------------------------");

      if (vall != null) {
        vall.forEach((key, value) {
          print('----$key   $value');
          print("--------------------------------------------");
          setState(() {
            mainhome.usrkey = '${value['profilepic']}';
          });
          print('----${mainhome.usrkey}----------------------');
        });
      }
    });

//////////////////////////////////////////////////////////
  }

  uploadpic() async {
    String Date = DateTime.now().toString();
    ImagePicker imagepicker = ImagePicker();
    XFile? imagefile = await imagepicker.pickImage(source: ImageSource.gallery);
    if (imagefile == null) return;
    Reference ref = FirebaseStorage.instance.ref();
    Reference directory = ref.child('post');
    Reference ref_to_upload = directory.child("${Date}.jpg");
    ref_to_upload.putFile(File(imagefile.path));
    print("----------------------------------------------------");

    try {
      await ref_to_upload.putFile(File(imagefile.path));
      url = await ref_to_upload.getDownloadURL();
      // setState(() {
      mainhome.posturl = url!;
      add();
      // posts.add(mainhome.posturl);
      // });

      print(mainhome.posturl);
    } catch (error) {}
  }

  add() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref('postes');
    await ref.push().set({'postname': mainhome.posturl});
  }

  getposts() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref('postes');
    await ref.get().then((value) {
      final vall = value.value as Map?;
      if (vall != null) {
        setState(() {
          vall.forEach((key, value) {
            // k = value;
            posts.add(value);
            // posts[0] = 'hhhhhhh';
          });
          print('-----------$value-------------------');
          print('------------------------------');
          print('------------------------------');
        });
      }
    });
    // print('------$posts----------');
    // print('------${posts[0]['postname']}----------');
  }
}
