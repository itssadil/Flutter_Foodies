import 'package:flutter/material.dart';
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
                      labelText: 'BookMark...',
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(Icons.bookmark),
                    ),
                  ),
                ),
              ),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '${i['description']}৳',
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
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
                    ],
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
