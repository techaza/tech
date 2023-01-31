import 'package:fb/screens/mainhome.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'friends.dart';
import 'reels.dart';
import 'market.dart';
import 'notification.dart';
import 'more.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  final usrcontroller = TextEditingController();
  late DatabaseReference dbrf;

  late TabController _tabcontroller;
  final List<Tab> _tabs = [
    const Tab(
        child: Icon(
      Icons.home,
      color: Colors.black,
    )),
    const Tab(
        child: Icon(
      Icons.people_alt_outlined,
      color: Colors.black,
    )),
    const Tab(
        child: Icon(
      Icons.tv_outlined,
      color: Colors.black,
    )),
    Tab(
        child: Icon(
      Icons.shop_2_outlined,
      color: Colors.black,
    )),
    Tab(
        child: Icon(
      Icons.notifications,
      color: Colors.black,
    )),
    Tab(
        child: Icon(
      Icons.more_horiz,
      color: Colors.black,
    )),
  ];
  void initState() {
    // ignore: todo
    // TODO: implement initState

    dbrf = FirebaseDatabase.instance.ref().child('data');

    _tabcontroller = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: const Text(
                "facebook",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
              actions: [
                Image.asset(
                  "assets/images/plus.png",
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/images/search (1).png",
                    width: 30,
                  ),
                ),
                Image.asset(
                  "assets/images/messenger.png",
                  width: 30,
                )
              ],
              bottom: TabBar(
                isScrollable: true,
                indicatorWeight: 5,
                onTap: (index) {
                  setState(() {
                    selectedindex = index;
                  });
                },
                tabs: _tabs,
                controller: _tabcontroller,
              )),
          body: TabBarView(
            physics: ScrollPhysics(),
            controller: _tabcontroller,
            children: const [
              mainhome(),
              friends(),
              reels(),
              market(),
              notification(),
              more()
            ],
          )),
    );
    // ignore: dead_code
  }

  // add() {
    
  //   Map<String, String> student = {'name': "gii"};
  //   dbrf.push().set(student);
  // }
}
