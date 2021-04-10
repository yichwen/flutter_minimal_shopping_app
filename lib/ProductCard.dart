import 'package:flutter/material.dart';

import 'CustomIcon.dart';

class ProductCard extends StatelessWidget {
  final int cardColor;
  final String imgUrl;
  final String title;
  final String previousPrice;
  final String price;

  const ProductCard(
      {Key key,
      this.cardColor,
      this.imgUrl,
      this.title,
      this.previousPrice,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        color: Color(cardColor),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey.withOpacity(.3),
          width: .2,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Image.asset(
            imgUrl,
            width: 281,
            height: 191,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Raleway',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(CustomIcons.favorite),
                  onPressed: () {},
                ),
                Column(
                  children: <Widget>[
                    Text(
                      previousPrice,
                      style: TextStyle(
                        color: Color(0xFFfeb0ba),
                        fontSize: 16.0,
                        fontFamily: "Helvetica",
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Helvetica',
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(CustomIcons.cart),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
