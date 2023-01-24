import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../contents/contents.dart';
import 'package:fb/contents/contents.dart';

class more extends StatelessWidget {
  const more({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Menu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.7,
                        ),
                        Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 198, 188, 188)),
                            child: Icon(
                              Icons.settings,
                              size: 30,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 198, 188, 188)),
                              child: Icon(
                                Icons.search_rounded,
                                size: 30,
                              )),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      foregroundColor: Colors.blue,
                                      backgroundImage: NetworkImage(
                                        Images[0],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          child: Text(
                                            Names[0],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text("See your profile")
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 2.1,
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: MediaQuery.of(context)
                                                .size
                                                .width /
                                            MediaQuery.of(context).size.height /
                                            .2,
                                        crossAxisCount: 2),
                                itemBuilder: ((context, index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15, left: 15),
                                                child: Image.asset(
                                                  symbols[index],
                                                  width: 25,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(Icons_name[index]),
                                              )
                                            ]),
                                      ),
                                    )),
                                itemCount: Images.length,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Center(
                                child: Container(
                                  width: double.infinity,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 102, 99, 99)),
                                  child: Center(child: Text("See more")),
                                ),
                              ),
                            ),
                            Divider(),
                            Row(
                              children: [
                                Icon(Icons.handshake),
                                Text("Community Resources"),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Icon(Icons.question_mark_rounded),
                                Text("Help and Support"),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Icon(Icons.settings),
                                Text("Settings and privacy"),
                              ],
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Center(
                                child: Container(
                                  width: double.infinity,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 102, 99, 99)),
                                  child: Center(child: Text("Logout")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
