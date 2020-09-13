import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gynapp/widgets/card_info/card_info.dart';
import 'package:gynapp/widgets/card_item/card_item.dart';
import 'package:gynapp/widgets/card_min/card_mini.dart';
import 'package:gynapp/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:gynapp/widgets/header_section/header_section.dart';
import 'package:gynapp/widgets/search_action/search_action.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                        height: 440,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: const Radius.circular(30.0),
                            bottomRight: const Radius.circular(30.0),
                          ),
                        ),
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 20, top: 210, right: 20),
                          child: Column(
                            children: [
                              HeaderSection(
                                text: "Your Workouts",
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 150,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    CardItem(
                                      image: "assets/images/fitness1.jpg",
                                    ),
                                    CardItem(
                                      image: "assets/images/fitness1.jpg",
                                    ),
                                    CardItem(
                                        image: "assets/images/fitness1.jpg"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                    CustomAppBar(),
                    Positioned(
                      top: 110,
                      right: 20,
                      child: CardInfo(),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: SearchAction(),
                ),
                Container(
                  height: 450,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      HeaderSection(
                        text: "Categories",
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CardMini(
                                      icon: Icons.fitness_center,
                                      text: "Muscle build",
                                    ),
                                    CardMini(
                                      icon: Icons.sentiment_neutral,
                                      text: "Fat lose",
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CardMini(
                                      icon: Icons.arrow_upward,
                                      text: "Cross fit",
                                    ),
                                    CardMini(
                                      icon: Icons.airline_seat_flat,
                                      text: "Yoga",
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            HeaderSection(
                              text: "Trending",
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 150,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CardItem(
                                    image: "assets/images/fitness1.jpg",
                                  ),
                                  CardItem(
                                    image: "assets/images/fitness1.jpg",
                                  ),
                                  CardItem(image: "assets/images/fitness1.jpg"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
