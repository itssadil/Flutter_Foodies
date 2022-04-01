import 'package:flutter/material.dart';

class HeaderMenu extends StatefulWidget {
  const HeaderMenu({Key? key}) : super(key: key);

  @override
  _HeaderMenuState createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
