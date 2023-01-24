import 'package:fb/contents/contents.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class market extends StatelessWidget {
  const market({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              "Market Place",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.6,
            ),
            Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 198, 188, 188)),
                child: Icon(
                  Icons.account_circle_rounded,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 198, 188, 188)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.edit_calendar_outlined),
                      Text("Sell"),
                    ],
                  )),
            ),
            Container(
                width: MediaQuery.of(context).size.width / 2.4,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 198, 188, 188)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.read_more_sharp),
                    Text("Categories"),
                  ],
                )),
          ],
        ),
        Divider(),
        Row(
          children: [
            Text(
              "Today's Picks",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
            ),
            Icon(Icons.location_on),
            Text("Kollam ",
                style: TextStyle(color: Color.fromARGB(255, 34, 0, 255))),
            Text(" 20 km",
                style: TextStyle(color: Color.fromARGB(255, 34, 0, 255))),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.7,
          child: GridView.builder(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://imgs.search.brave.com/aWamjScQvv3-5PboXRL29dHWsr_3A9xU9TqZTFDnWi4/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5W/ZGNzOUEteVhEY0Ix/dXJEN21hdXdRSGFF/OCZwaWQ9QXBp",
                            height: 150,
                          ),
                          Row(
                            children: [
                              Text("Rs"),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(values[index]),
                              ),
                              Text("Apple$index"),
                            ],
                          ),
                        ]),
                  ),
                )),
            itemCount: Images.length,
          ),
        )
      ]),
    ));
  }
}
