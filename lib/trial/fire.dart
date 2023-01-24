// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class fire extends StatefulWidget {
//   const fire({super.key});

//   @override
//   State<fire> createState() => _fireState();
// }

// class _fireState extends State<fire> {
// File? pickedFile;
//   Future select() async {
//     final result = await FilePicker.platform.pickFiles();
//     setState(() {
//       pickedFile = File(result.path
//       );
//     });
//   }

//   Future Upload() async {
//     // final path = 'files/${pickedFile!.name}';
//     // final file = File(pickedFile!.path!);
//     // final ref = FirebaseStorage.instance.ref().child(path);
//     // ref.putFile(file);
//     try {
//       firebase_storage.Reference refs =
//           firebase_storage.FirebaseStorage.instance.ref('avatar/image');
//       UploadTask uploadTask = refs.putFile();
//     } catch (e) {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         ElevatedButton(
//           child: Text("select"),
//           onPressed: (() async {
//             final result = await FilePicker.platform.pickFiles(
//                 allowMultiple: true,
//                 type: FileType.custom,
//                 allowedExtensions: ['jpg', 'png']);
//             if (result == null) {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text("no file choosen")));
//             }
//           }),
//         ),
//         ElevatedButton(onPressed: Upload, child: Text("upload"))
//       ]),
//     );
//   }
// }
