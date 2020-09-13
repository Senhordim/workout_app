import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String text;
  final String image;

  CardItem({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 233,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(right: 20),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 110,
            right: 65,
            child: Text(
              'Upper Body - 15 mins',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
