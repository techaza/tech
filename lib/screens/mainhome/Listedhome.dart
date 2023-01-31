// ignore_for_file: avoid_unnecessary_containers

import 'package:fb/screens/mainhome.dart';
import 'package:fb/screens/mainhome/liked.dart';
import 'package:flutter/material.dart';
import 'package:fb/contents/contents.dart';

class Listed1 extends StatefulWidget {
  const Listed1({super.key, required this.posts});
  final List posts;

  @override
  State<Listed1> createState() => _Listed1State();
}

class _Listed1State extends State<Listed1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: ((context, index) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(15),
                
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: mainhome.usrkey != null
                              ? NetworkImage(mainhome.usrkey!)
                              : const AssetImage("assets/images/book.png")
                                  as ImageProvider,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              Names[index],
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(time[index])
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        const Icon(Icons.more_horiz),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.close),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Image.network(widget.posts[index]['postname']),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: Colors.blue,
                          size: 20,
                        ),
                        const Text("Liked by messi and 27 others"),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        liked(),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.message_outlined,
                                color: Color.fromARGB(255, 85, 77, 77)),
                            label: const Text("Comment",
                                style: TextStyle(color: Colors.black))),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.send_outlined,
                                color: Color.fromARGB(255, 85, 77, 77)),
                            label: const Text("Send",
                                style: TextStyle(color: Colors.black))),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Divider(
                        thickness: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
          itemCount: widget.posts.length,
        ));
  }
}
