import 'package:fb/screens/mainhome.dart';
import 'package:fb/screens/mainhome/liked.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fb/contents/contents.dart';
import 'package:photo_view/photo_view.dart';

class Listed1 extends StatelessWidget {
  Listed1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
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
                              : AssetImage("assets/images/book.png")
                                  as ImageProvider,
                        ),
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(time[index])
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        Icon(Icons.more_horiz),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.close),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InteractiveViewer(
                        child: Image.network(mainhome.posts[index])),
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
                        liked(),
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
            );
          }),
          itemCount: mainhome.posts.length,
        ));
  }
}
