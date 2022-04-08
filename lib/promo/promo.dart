import 'package:flutter/material.dart';
import 'package:foodies/promo/promoCodes/promoCodes.dart';
import 'package:foodies/widgets/headerText.dart';

final List imgList = [
  {
    'title': 'Ramadan Offer',
    'description': 'Upto 100',
    'discount': '26%',
    'img':
        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/copy-of-gift-voucher-design-template-2339533c03e1ebab277c595538ea1d82_screen.jpg?ts=1576723138',
    'promoId': '135',
  },
  {
    'title': 'Sehri Offer',
    'description': 'Upto 150',
    'discount': '30%',
    'img': 'https://www.vipbottles.co.uk/wp-content/uploads/2019/05/voucha.jpg',
    'promoId': '123',
  },
  {
    'title': 'Ifter Offer',
    'description': 'Upto 80',
    'discount': '20%',
    'img': 'https://theradcliffe.uk/wp-content/uploads/2020/11/10.png',
    'promoId': '165',
  },
  {
    'title': 'Eid Offer',
    'description': 'Upto 200',
    'discount': '35%',
    'img': 'https://revitalize.co.ke/wp-content/uploads/2019/07/2500.jpg',
    'promoId': '765',
  },
];

class Promo extends StatefulWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              headerText(txt1: 'Promo', txt2: 'Code'),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Form(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Promo...',
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
              for (var i in imgList) promoCodes(i, context),
            ],
          ),
        )
      ],
    );
  }
}
