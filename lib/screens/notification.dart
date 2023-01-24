import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../contents/contents.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                ),
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
            Text(
              "Earlier",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.45,
              child: ListView.builder(
                  itemCount: Names.length,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      foregroundColor: Colors.blue,
                                      backgroundImage: NetworkImage(
                                        Images[index],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // color: Colors.orange,
                                  width:
                                      MediaQuery.of(context).size.width / 1.4,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: 35,
                                          child: SingleChildScrollView(
                                            child: RichText(
                                                text: TextSpan(
                                                    text: Names1[index],
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          '-added a new story',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight
                                                              .normal))
                                                ])),
                                          ),
                                        ),
                                        Text(time[index])
                                      ]),
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  size: 15,
                                )
                              ],
                            ),
                            Divider(
                              thickness: .5,
                            )
                          ],
                        ),
                      )))),
            ),
          ])),
    );
  }
}
