import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gynapp/widgets/card_info/card_info.dart';
import 'package:gynapp/widgets/custom_app_bar/custom_app_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          child: Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  CustomAppBar(),
                  Positioned(
                    top: 110,
                    right: 20,
                    child: CardInfo(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
