import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodies/home/sub/homeHeader/sub/headerMenu.dart';
import 'package:foodies/home/sub/homeHeader/sub/headerText.dart';
import 'package:foodies/appbar/customAppBar.dart';

Widget homeHeader() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Column(
      children: [
        CustomAppBar(),
        headerText(),
        HeaderMenu(),
      ],
    ),
  );
}
