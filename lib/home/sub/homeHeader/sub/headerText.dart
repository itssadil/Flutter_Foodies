import 'package:flutter/material.dart';

Widget headerText() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    alignment: Alignment.topLeft,
    child: RichText(
      text: TextSpan(
        text: 'Stay at home \nMake your own ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          letterSpacing: 1,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'Food',
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    ),
  );
}
