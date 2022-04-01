import 'package:flutter/material.dart';
import 'package:foodies/appbar/drawer.dart';
import 'package:foodies/appbar/myBar.dart';
import 'package:foodies/home/sub/homeHeader.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myBar(title),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          HomeHeader(context),
        ],
      ),
    );
  }
}
