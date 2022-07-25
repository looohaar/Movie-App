

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/downloadsScreen.dart';
import 'package:netflix_clone/presentation/fastlaughs/fastlaughs.dart';
import 'package:netflix_clone/presentation/home/home.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/newandhot/newandhot.dart';
import 'package:netflix_clone/presentation/search/search.dart';

class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);
  final _pages=[
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier,
         builder: (context, int index, _){
          return _pages[index];
      
         }),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
    
  }
}