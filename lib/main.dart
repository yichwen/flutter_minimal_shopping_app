import 'package:flutter/material.dart';
import 'package:minimal_shopping_app/ProductCard.dart';

import 'CustomIcon.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  List<Widget> bottomNavIconList = [
    Image.asset(
      'assets/store.png',
      width: 35.0,
      height: 35.0,
    ),
    Icon(
      CustomIcons.search,
      size: 32.0,
    ),
    Icon(
      CustomIcons.favorite,
      size: 32.0,
    ),
    Icon(CustomIcons.cart, size: 32.0),
    Image.asset(
      'assets/profile.png',
      width: 35.0,
      height: 35.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 25),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 62,
                    height: 43,
                  ),
                ),
              ),
              ProductCard(
                cardColor: 0xFFFAECFB,
                imgUrl: 'assets/shoes_01.png',
                title: 'Hybrid Rocket WNS',
                previousPrice: '\$999.00',
                price: '\$749.00',
              ),
              SizedBox(
                height: 32,
              ),
              ProductCard(
                cardColor: 0xFFF8E1DA,
                imgUrl: 'assets/shoes_02.png',
                title: 'Hybrid Runner ARS',
                previousPrice: '\$699.00',
                price: '\$599.00',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.065),
            // go up -3
            offset: Offset(0, -3),
            blurRadius: 10,
          ),
        ]),
        child: Row(
          children: bottomNavIconList.map((item) {
            var index = bottomNavIconList.indexOf(item);
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  print(index);
                },
                child: bottomNavItem(
                  item,
                  index == _currentIndex,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

bottomNavItem(Widget item, bool isSelected) => Container(
      decoration: BoxDecoration(
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.02),
                  // go down 5
                  offset: Offset(0, 5),
                  blurRadius: 10,
                ),
              ]
            : [],
      ),
      child: item,
    );
