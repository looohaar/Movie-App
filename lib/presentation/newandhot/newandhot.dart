import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/newandhot/widgets/comingsoonwidget.dart';
import 'package:netflix_clone/presentation/newandhot/widgets/commonwidgets.dart';

import '../home/widgets/background_card.dart';
import 'widgets/everyonewatchingwidget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CustomAppBar(title: 'New & Hot'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top:15),
          child: TabBarView(
              children: [
                comingSoonBluilder(context),
              EveryoneWatchingWidget(),
              ]),
        ),
      ),
    );
  }

  Widget comingSoonBluilder(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 10,
       itemBuilder: (context, index)=>ComingSooonWidget(),
        
     
    );
  }

// Widget  EveryoneWatchingBuilder(BuildContext context){
//   final Size size = MediaQuery.of(context).size;
//   return ListView.builder(
//     itemBuilder: (context, index)=> EveryoneWatchingWidget());
// }

}

