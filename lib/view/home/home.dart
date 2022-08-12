import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/controller/home_controllers/topmovies_controlle.dart';
import 'package:netflix_clone/controller/home_controllers/trending_controller.dart';
import 'package:netflix_clone/controller/home_controllers/upcoming_controller.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/heights/constants.dart';
import 'package:netflix_clone/view/home/widgets/background_card.dart';
import 'package:netflix_clone/view/home/widgets/homepagemaintile.dart';
import 'package:netflix_clone/view/home/widgets/homepagenumbercard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final trendingVariable = Get.put(TrendingController());
    final topMoviesVariable = Get.put(TopMoviesController());
    final upcominMoviesVariable= Get.put(UpcomingController());
    var baseUrl = "https://image.tmdb.org/t/p/w500";
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
                  Obx(
                    () => ListView(
                      children: [
                        BackGroundCard(
                          url:
                              'https://www.themoviedb.org/t/p/w220_and_h330_face/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg',
                        ),
                        kheight,
                        HomePageMainTile(
                          heading: 'Trending',
                          children: List.generate(
                              trendingVariable.imageData!()!.results!.length,
                              (index) {
                            return MainPageCard(
                              url:
                                  "${baseUrl}${trendingVariable.imageData!()?.results![index].posterPath}",
                            );
                          }),
                        ),
                        kheight,
                        HomePageMainTile(
                          heading: 'Top Movies',
                          children: List.generate(
                              topMoviesVariable.imageData!()!.results!.length,
                              (index) {
                            return MainPageCard(
                              url:
                                  "${baseUrl}${topMoviesVariable.imageData!()?.results![index].posterPath}",
                            );
                          }),
                        ),
                        kheight,
                        HomepageNumberCard(
                          heading: 'Top 10 TV Shows In India ',
                          url:
                              'https://www.themoviedb.org/t/p/w220_and_h330_face/ox4goZd956BxqJH6iLwhWPL9ct4.jpg',
                        ),
                        kheight,
                        HomePageMainTile(
                          heading: 'Upcoming',
                          children: List.generate(
                              upcominMoviesVariable.imageData!()!.results!.length,
                              (index) {
                            return MainPageCard(
                              url:
                                  "${baseUrl}${upcominMoviesVariable.imageData!()?.results![index].posterPath}",
                            );
                          }),
                        ),
                        kheight,
                        HomePageMainTile(
                          heading: 'Trending',
                          children: List.generate(
                              trendingVariable.imageData!()!.results!.length,
                              (index) {
                            return MainPageCard(
                              url:
                                  "${baseUrl}${trendingVariable.imageData!()?.results![index].posterPath}",
                            );
                          }),
                        ),
                      ],
                    ),
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

// {
//   "results": [
//     {
//       "poster_path": ""
//     }
//   ]
// }
