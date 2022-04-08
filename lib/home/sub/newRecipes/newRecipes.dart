import 'package:flutter/material.dart';
import 'package:foodies/home/homeWidget/homeSectionTitle.dart';
import 'package:foodies/home/sub/newRecipes/sub/showNewRecipes.dart';

Widget newRecipes() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [homeSubTitle("New Recipes"), ShowNewRecipes()],
    ),
  );
}
