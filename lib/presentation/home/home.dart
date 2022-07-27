import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/homepagemaintile.dart';
import 'package:netflix_clone/presentation/home/widgets/homepagenumbercard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection scrollDirection = notification.direction;
                if (scrollDirection == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (scrollDirection == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      BackGroundCard(
                        url:
                            'https://www.themoviedb.org/t/p/w220_and_h330_face/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg',
                      ),
                      kheight,
                      HomePageMainTile(
                        heading: 'Released in the past year',
                        url:
                            'https://www.themoviedb.org/t/p/w220_and_h330_face/p9ZUzCyy9wRTDuuQexkQ78R2BgF.jpg',
                      ),
                      kheight,
                      HomePageMainTile(
                          heading: 'Trending',
                          url:
                              'https://www.themoviedb.org/t/p/w220_and_h330_face/8cXbitsS6dWQ5gfMTZdorpAAzEH.jpg'),
                      kheight,
                      HomepageNumberCard(
                        heading: 'Top 10 TV Shows In India ',
                        url:
                            'https://www.themoviedb.org/t/p/w220_and_h330_face/ox4goZd956BxqJH6iLwhWPL9ct4.jpg',
                      ),
                      kheight,
                      HomePageMainTile(
                          heading: 'Tense Dramas',
                          url:
                              'https://www.themoviedb.org/t/p/w220_and_h330_face/cXUqtadGsIcZDWUTrfnbDjAy8eN.jpg'),
                      kheight,
                      HomePageMainTile(
                        heading: 'South Indian Films',
                        url:
                            'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/n1pDcXST1I137DcUjWUv1Ar13TW.jpg',
                      ),
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                        duration: Duration(seconds: 2),
                        child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [kBlackColor, Colors.transparent],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            height: 80,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
                                      width: 55,
                                      height: 50,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    kwidth,
                                    Container(
                                      height: 30,
                                      width: 30,
                                      color: Colors.blue,
                                    ),
                                    kwidth,
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Movies',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Categories',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                      )
                      : kheight
                ],
              ),
            );
          }),
    );
  }
}
