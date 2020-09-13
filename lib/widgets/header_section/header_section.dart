import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final String text;
  final IconData icon;

  HeaderSection({@required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Color(0xff2B343B),
              fontSize: 24,
              fontWeight: FontWeight.w400),
        ),
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xffFCEFE7),
          child: Icon(
            icon ?? Icons.arrow_forward_ios,
            size: 12,
          ),
        )
      ],
    );
  }
}
