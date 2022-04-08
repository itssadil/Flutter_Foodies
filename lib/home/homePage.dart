import 'package:flutter/material.dart';
// import 'package:foodies/appbar/drawer.dart';
// // import 'package:foodies/appbar/myBar.dart';
import 'package:foodies/home/sub/homeHeader/homeHeader.dart';
import 'package:foodies/home/sub/popularRecipes/popularRecipes.dart';
import 'package:foodies/home/sub/primaryRecipes/primaryRecipes.dart';
import 'package:foodies/home/sub/newRecipes/newRecipes.dart';
// import 'package:foodies/widgets/notifyDrawer.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
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
    );
  }
}
