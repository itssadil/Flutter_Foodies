import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodies/widgets/headerMenu.dart';
import 'package:foodies/widgets/headerText.dart';

Widget homeHeader() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: Column(
      children: [
        headerText(txt1: 'Stay at home \nMake your own', txt2: 'Food'),
        HeaderMenu(),
      ],
    ),
  );
}
