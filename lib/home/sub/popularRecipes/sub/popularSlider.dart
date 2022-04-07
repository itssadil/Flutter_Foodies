import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List imgList = [
  {
    'title': 'Pizza',
    'img':
        'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
    'price': '720',
  },
  {
    'title': 'Burger',
    'img':
        'https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '135',
  },
  {
    'title': 'Pasta',
    'img':
        'https://images.unsplash.com/photo-1551183053-bf91a1d81141?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGFzdGF8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'price': '80',
  },
  {
    'title': 'Rice',
    'img':
        'https://images.unsplash.com/photo-1539755530862-00f623c00f52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJpcnlhbml8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'price': '100',
  },
  {
    'title': 'Kacchi Biryani',
    'img':
        'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '210',
  },
  {
    'title': 'Kichuri',
    'img':
        'https://images.unsplash.com/photo-1552590635-27c2c2128abf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmlyeWFuaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
    'price': '88',
  }
];

class PopularSlider extends StatefulWidget {
  const PopularSlider({Key? key}) : super(key: key);

  @override
  _PopularSliderState createState() => _PopularSliderState();
}

class _PopularSliderState extends State<PopularSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Container(
          margin: EdgeInsets.only(top: 20),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                      image: NetworkImage(
                        imgList[itemIndex]['img'],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Text(
                    imgList[itemIndex]['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                    ),
                  ),
                  child: Text(
                    '${imgList[itemIndex]['price']}৳',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.7,
        aspectRatio: 2.0,
        initialPage: 1,
        height: MediaQuery.of(context).size.height * .2,
      ),
    );
  }
}
