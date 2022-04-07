import 'package:flutter/material.dart';

final List imgList = [
  {
    'title': 'Pizza',
    'img':
        'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
    'price': '720',
    'ranks': 5,
  },
  {
    'title': 'Burger',
    'img':
        'https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '135',
    'ranks': 4.1,
  },
  {
    'title': 'Pasta',
    'img':
        'https://images.unsplash.com/photo-1551183053-bf91a1d81141?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGFzdGF8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'price': '80',
    'ranks': 3,
  },
  {
    'title': 'Rice',
    'img':
        'https://images.unsplash.com/photo-1539755530862-00f623c00f52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJpcnlhbml8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'price': '100',
    'ranks': 4,
  },
  {
    'title': 'Kacchi Biryani',
    'img':
        'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '210',
    'ranks': 3.5,
  },
  {
    'title': 'Kichuri',
    'img':
        'https://images.unsplash.com/photo-1552590635-27c2c2128abf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '88',
    'ranks': 5,
  }
];

class ShowPrimaryRecipes extends StatefulWidget {
  const ShowPrimaryRecipes({Key? key}) : super(key: key);

  @override
  _ShowPrimaryRecipesState createState() => _ShowPrimaryRecipesState();
}

class _ShowPrimaryRecipesState extends State<ShowPrimaryRecipes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i in imgList)
          Card(
            elevation: 4,
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(i['img'].toString()),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                ),
                ListTile(
                  visualDensity: VisualDensity(vertical: -2),
                  title: Text(i['title'].toString()),
                  subtitle: Text('${i['price'].toString()}৳'),
                  trailing: Wrap(
                    children: [
                      for (int n = 1; n < i['ranks']; n++)
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 15,
                        ),
                      if ((i['ranks'] > 1.25 && i['ranks'] < 1.75) ||
                          (i['ranks'] > 2.25 && i['ranks'] < 2.75) ||
                          (i['ranks'] > 3.25 && i['ranks'] < 3.75) ||
                          (i['ranks'] > 4.25 && i['ranks'] < 4.75))
                        Icon(
                          Icons.star_half,
                          color: Colors.deepOrange,
                          size: 15,
                        )
                      else if (i['ranks'] == 1 ||
                          i['ranks'] == 2 ||
                          i['ranks'] == 3 ||
                          i['ranks'] == 4 ||
                          i['ranks'] == 5)
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 15,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
