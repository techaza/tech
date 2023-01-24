import 'package:fb/contents/contents.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class reels extends StatelessWidget {
  const reels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            child: ListView.builder(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: ((context, index) => Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  backgroundImage: NetworkImage(Images[index])),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    Names[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(time[index])
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3,
                              ),
                              Icon(Icons.more_horiz),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Icons.close),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Image.network(Images[index]),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Text("Liked by messi and 27 others"),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: Color.fromARGB(255, 85, 77, 77),
                                  ),
                                  label: Text(
                                    "Like",
                                    style: TextStyle(color: Colors.black),
                                  )),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.message_outlined,
                                      color: Color.fromARGB(255, 85, 77, 77)),
                                  label: Text("Comment",
                                      style: TextStyle(color: Colors.black))),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.send_outlined,
                                      color: Color.fromARGB(255, 85, 77, 77)),
                                  label: Text("Send",
                                      style: TextStyle(color: Colors.black))),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: Divider(
                              thickness: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              itemCount: Names.length,
            )));
  }
}
