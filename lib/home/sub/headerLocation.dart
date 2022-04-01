import 'package:flutter/material.dart';

class HeaderLocation extends StatelessWidget {
  const HeaderLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        leading: Icon(
          Icons.location_on_rounded,
          color: Colors.black,
        ),
        title: Text(
          "Block-B, House Numbers, 83 Rd Number 4, Dhaka 1213",
          softWrap: false,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
