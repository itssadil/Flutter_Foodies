import 'package:flutter/material.dart';
import 'package:foodies/widgets/customAppBar.dart';
import 'package:foodies/widgets/drawer.dart';
import 'package:foodies/bookMark/bookMark.dart';
import 'package:foodies/home/homePage.dart';
import 'package:foodies/search/search.dart';
import 'package:foodies/promo/promo.dart';
import 'package:foodies/notification/notification.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ShowPage extends StatefulWidget {
  final String title;
  const ShowPage({Key? key, required this.title}) : super(key: key);

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  int current_index = 1;
  final screens = [
    Search(),
    Promo(),
    HomePage(),
    notification(),
    BookMark(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // appBar: myBar(title),
      drawer: MyDrawer(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          index: current_index,
          items: <Widget>[
            Icon(Icons.search),
            Icon(Icons.whatshot_outlined),
            Icon(Icons.home),
            Icon(Icons.notifications),
            Icon(Icons.bookmark),
          ],
          height: 60,
          onTap: (index) {
            setState(() {
              current_index = index;
            });
          },
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: CustomAppBar(),
        ),
        Expanded(child: screens[current_index]),
      ]),
    );
  }
}
