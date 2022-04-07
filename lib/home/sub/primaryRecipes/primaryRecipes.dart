import 'package:flutter/material.dart';
import 'package:foodies/home/homeWidget/popularTitle.dart';
import 'package:foodies/home/sub/primaryRecipes/sub/showPrimaryRecipes.dart';

Widget primaryRecipes() {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [homeSubTitle("Primary Recipes"), ShowPrimaryRecipes()],
    ),
  );
}
