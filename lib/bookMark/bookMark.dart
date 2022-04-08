import 'package:flutter/material.dart';
import 'package:foodies/bookMark/sub/savedRecipes/savedRecipes.dart';
import 'package:foodies/widgets/headerText.dart';

class BookMark extends StatefulWidget {
  const BookMark({Key? key}) : super(key: key);

  @override
  _BookMarkState createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              headerText(txt1: 'Bookmark', txt2: ''),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Form(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'BookMark...',
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(Icons.bookmark),
                    ),
                  ),
                ),
              ),
              SavedRecipes(),
            ],
          ),
        ),
      ],
    );
  }
}
