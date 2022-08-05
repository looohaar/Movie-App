import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/heights/constants.dart';
import 'package:netflix_clone/view/newandhot/widgets/commonwidgets.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      // color: Colors.white,
      height: size.width * 1.35,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustumNameDescription(
            description:
                "Years after moving to a remote \ntown, ex-cop Pipa is pulled back into \nthe dark world she thought she'd left \nbehind when a corpse appears on \nher property.",
            name: 'Better Call',
          ),
          kheight40,
          EveryoneWatchingVideoWidget(
              url:
                  'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/8cxu2iB5XkBaQr93vIBVZD2jVSq.jpg'),
          kheight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CustomIconButton(
                  icon: Icons.share,
                  label: 'Share',
                  size: 15,
                  color: kGreyColor,
                  iconSize: 30,
                  iconColor: kwhite),
              kwidth,
              CustomIconButton(
                  icon: Icons.add,
                  label: 'My List',
                  size: 15,
                  color: kGreyColor,
                  iconSize: 30,
                  iconColor: kwhite),
              kwidth,
              CustomIconButton(
                  icon: Icons.play_arrow,
                  label: 'Play',
                  size: 15,
                  color: kGreyColor,
                  iconSize: 30,
                  iconColor: kwhite),
              kwidth
            ],
          )
        ],
      ),
    );
  }
}
