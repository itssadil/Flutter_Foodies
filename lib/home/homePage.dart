import 'package:flutter/material.dart';
import 'package:foodies/appbar/drawer.dart';
// import 'package:foodies/appbar/myBar.dart';
import 'package:foodies/home/sub/homeHeader/homeHeader.dart';
import 'package:foodies/home/sub/popularRecipes/popularRecipes.dart';
import 'package:foodies/home/sub/primaryRecipes/primaryRecipes.dart';
import 'package:foodies/home/sub/newRecipes/newRecipes.dart';
import 'package:foodies/widgets/notifyDrawer.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: myBar(title),
      drawer: MyDrawer(),
      endDrawer: NotifyDrawer(),
      body: Builder(
        builder: (context) => ListView(
          children: [
            homeHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [popularRecipes(), newRecipes(), primaryRecipes()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
