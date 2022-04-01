import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List imgList = [
  {
    'img':
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    'desc': '-50% off the full price of traditional food'
  }
];

class HeaderSlider extends StatefulWidget {
  const HeaderSlider({Key? key}) : super(key: key);

  @override
  _HeaderSliderState createState() => _HeaderSliderState();
}

class _HeaderSliderState extends State<HeaderSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        aspectRatio: 2.0,
        initialPage: 2,
        height: MediaQuery.of(context).size.height * 0.17,
      ),
    );
  }
}
