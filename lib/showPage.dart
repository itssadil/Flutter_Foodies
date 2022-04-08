import 'package:flutter/material.dart';
import 'package:foodies/appbar/drawer.dart';
import 'package:foodies/bookMark/bookMark.dart';
import 'package:foodies/home/homePage.dart';
import 'package:foodies/search/search.dart';
// import 'package:foodies/appbar/myBar.dart';
import 'package:foodies/home/sub/homeHeader/homeHeader.dart';
import 'package:foodies/home/sub/popularRecipes/popularRecipes.dart';
import 'package:foodies/home/sub/primaryRecipes/primaryRecipes.dart';
import 'package:foodies/home/sub/newRecipes/newRecipes.dart';
import 'package:foodies/widgets/notifyDrawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ShowPage extends StatefulWidget {
  final String title;
  const ShowPage({Key? key, required this.title}) : super(key: key);

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  int current_index = 1;
  final screens = [search(), HomePage(), bookMark()];
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
            Icon(Icons.home),
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
      body: screens[current_index],
    );
  }
}
