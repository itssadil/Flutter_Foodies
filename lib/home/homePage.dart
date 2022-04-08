import 'package:flutter/material.dart';

import 'package:foodies/home/sub/homeHeader/homeHeader.dart';
import 'package:foodies/home/sub/popularRecipes/popularRecipes.dart';
import 'package:foodies/home/sub/primaryRecipes/primaryRecipes.dart';
import 'package:foodies/home/sub/newRecipes/newRecipes.dart';

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
