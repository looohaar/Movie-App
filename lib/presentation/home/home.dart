import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/homepagemaintile.dart';
import 'package:netflix_clone/presentation/home/widgets/homepagenumbercard.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
               HomePageMainTile(heading: 'Released in the past year',
               url: 'https://www.themoviedb.org/t/p/w220_and_h330_face/p9ZUzCyy9wRTDuuQexkQ78R2BgF.jpg',),
              
               HomePageMainTile(heading: 'Trending',
                url: 'https://www.themoviedb.org/t/p/w220_and_h330_face/8cXbitsS6dWQ5gfMTZdorpAAzEH.jpg'),
              
              HomepageNumberCard(heading:'Top 10 TV Shows In India ' ,
               url:'https://www.themoviedb.org/t/p/w220_and_h330_face/ox4goZd956BxqJH6iLwhWPL9ct4.jpg',),
              
               HomePageMainTile(heading: 'Tense Dramas',
               url: 'https://www.themoviedb.org/t/p/w220_and_h330_face/cXUqtadGsIcZDWUTrfnbDjAy8eN.jpg'),
              
               HomePageMainTile(heading: 'South Indian Films',
               url: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/n1pDcXST1I137DcUjWUv1Ar13TW.jpg',),
              
             
              ],
            ),
          )

        ));
  }
}


