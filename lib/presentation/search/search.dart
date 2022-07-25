


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/commonwidgets.dart';
import 'package:netflix_clone/presentation/search/widgets/search_page.dart';
import 'package:netflix_clone/presentation/search/widgets/searchresult.dart';

String imageUrl1= 'https://www.themoviedb.org/t/p/w250_and_h141_face/nW5fUbldp1DYf2uQ3zJTUdachOu.jpg';
String imageUrl2='https://www.themoviedb.org/t/p/w220_and_h330_face/pWHf4khOloNVfCxscsXFj3jj6gP.jpg';
class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
      child: Padding(padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),
          kheight,
          HeadingText(heading: 'Movies & TV'),
          kheight,
          SearchResultsBuilder()


        ],
      ),
      )
      )
    );
    
  }
}
