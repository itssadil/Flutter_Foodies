import 'package:flutter/material.dart';

Widget headerText({String? txt1, txt2, txt3}) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    alignment: Alignment.topLeft,
    child: RichText(
      text: TextSpan(
        text: txt1,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          letterSpacing: 1,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: ' $txt2 ',
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          ),
          TextSpan(
            text: txt3,
          ),
        ],
      ),
    ),
  );
}
