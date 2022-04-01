import 'package:flutter/material.dart';
import 'package:foodies/home/sub/headerLocation.dart';
import 'package:foodies/home/sub/headerMenu.dart';
import 'package:foodies/home/sub/headerSlider.dart';
import 'package:foodies/widgets/customShapes.dart';

Widget HomeHeader(BuildContext context) {
  return Stack(
    children: [
      Opacity(
        opacity: 0.5,
        child: ClipPath(
          clipper: Clip3Clipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      ClipPath(
        clipper: Clip3Clipper(),
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height * 0.28,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: HeaderSlider(),
        ),
      ),
    ],
  );
}
