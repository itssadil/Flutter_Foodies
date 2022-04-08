import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodies/home/homeWidget/homeSectionTitle.dart';
import 'package:foodies/home/sub/popularRecipes/sub/popularSlider.dart';

Widget popularRecipes() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [homeSubTitle("Popular Recipes"), PopularSlider()],
  );
}
