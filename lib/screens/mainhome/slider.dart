import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fb/contents/contents.dart';

class slider1 extends StatelessWidget {
  const slider1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
          itemCount: Names.length,
          physics: ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(Images[index]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: CircleAvatar(
                        radius: 15,
                        foregroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                          Images[index],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 110, left: 10),
                      child: Text(
                        Names[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )))),
    );
  }
}
