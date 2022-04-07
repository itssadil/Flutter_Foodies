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
      padding: const EdgeInsets.only(top: 25.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            HeaderMenuBtn(
              'Primary',
              btnClr: Theme.of(context).primaryColor,
              txtClr: Colors.white,
            ),
            HeaderMenuBtn('Pizza'),
            HeaderMenuBtn('Pasta'),
            HeaderMenuBtn('Burger'),
            HeaderMenuBtn('Rice'),
            HeaderMenuBtn('Salad'),
            HeaderMenuBtn('Soup'),
          ],
        ),
      ),
    );
  }

  Widget HeaderMenuBtn(String btnName, {Color? btnClr, txtClr}) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          btnName,
          style: TextStyle(color: txtClr),
        ),
        style: ElevatedButton.styleFrom(primary: btnClr),
      ),
    );
  }
}
