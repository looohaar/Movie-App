


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

import '../../../core/colors/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            kwidth,
            Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900 ),),
            Spacer(),
            Icon(Icons.cast,color: Colors.white,size: 30,),
            kwidth,
            Container(
              height: 30,
              width: 30,
              color: Colors.blue,
            ),
            kwidth,
          ],
        ),
        TabBar(
          indicator: BoxDecoration(color: kwhite,
          borderRadius: BorderRadius.circular(30)
          ),
          labelColor: kBlackColor,
          unselectedLabelColor: kwhite,
          labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
          isScrollable: true,
          tabs: [
          Tab(child: Text('🍿 Coming Soon'),),
          Tab(child: Text("👀 Everyone's Watching"),)
        ])
      ],
    );
    
  }
}