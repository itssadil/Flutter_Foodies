import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.black26, spreadRadius: 1)
            ],
          ),
          child: CircleAvatar(
            child: IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).primaryColor,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.black26, spreadRadius: 1)
            ],
          ),
          child: CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
                color: Theme.of(context).primaryColor,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
