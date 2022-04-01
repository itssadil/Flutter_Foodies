import 'package:flutter/material.dart';

/*===========================================================
                         CLIP 0
========================================================== */

class Clip0Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        0, size.height * .8, size.width * .2, size.height * .8);
    path.lineTo(size.width * .8, size.height * .8);
    path.quadraticBezierTo(
        size.width, size.height * .8, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

/*===========================================================
                         CLIP 1
========================================================== */

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.6,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.7, size.height, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

/*===========================================================
                         CLIP 2
========================================================== */

class Clip2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.3, size.height, size.width, size.height * 0.3);

    path.quadraticBezierTo(
        size.width * 0.1, size.height, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
/*===========================================================
                         CLIP 3
========================================================== */

class Clip3Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.8);

    path.quadraticBezierTo(
        size.width * 0.28, size.height, size.width * 0.5, size.height * 0.8);

    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.55, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
