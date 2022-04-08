import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

final List imgList = [
  {
    'title': 'Pizza',
    'img':
        'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
    'price': '720',
    'discount': 10,
    'ranks': 5.0,
  },
  {
    'title': 'Burger',
    'img':
        'https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '135',
    'discount': 5,
    'ranks': 4.1,
  },
  {
    'title': 'Pasta',
    'img':
        'https://images.unsplash.com/photo-1551183053-bf91a1d81141?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGFzdGF8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'price': '80',
    'discount': 0,
    'ranks': 3.0,
  },
  {
    'title': 'Rice',
    'img':
        'https://images.unsplash.com/photo-1539755530862-00f623c00f52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJpcnlhbml8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'price': '100',
    'discount': 0,
    'ranks': 4.0,
  },
  {
    'title': 'Kacchi Biryani',
    'img':
        'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '210',
    'discount': 20,
    'ranks': 3.5,
  },
  {
    'title': 'Kichuri',
    'img':
        'https://images.unsplash.com/photo-1552590635-27c2c2128abf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '88',
    'discount': 45,
    'ranks': 5.0,
  }
];

class SavedRecipes extends StatelessWidget {
  const SavedRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i in imgList)
          Card(
            elevation: 4,
            margin: EdgeInsets.only(top: 15),
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(i['img'].toString()),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              i['title'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '${i['price']}৳',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Column(
                    children: [
                      if (i['discount'] != 0)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 5),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                '-${i['discount']}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          i['ranks'].toString(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
