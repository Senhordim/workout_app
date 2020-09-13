import 'package:flutter/material.dart';

class CardMini extends StatelessWidget {
  final IconData icon;
  final String text;

  CardMini({
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 170,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xffFCEFE7),
          border: Border.all(color: Colors.orange, width: 0.8),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.orange,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
                color: Color(0xff7E7D7D),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
