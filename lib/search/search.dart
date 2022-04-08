import 'package:flutter/material.dart';
import 'package:foodies/search/sub/exploreRecipes/exploreRecipes.dart';
import 'package:foodies/widgets/headerMenu.dart';
import 'package:foodies/widgets/headerText.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              headerText(txt1: 'Explore', txt2: ''),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Form(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search...',
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              HeaderMenu(),
              ExploreRecipes(),
            ],
          ),
        ),
      ],
    );
  }
}
