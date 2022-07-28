
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/newandhot/widgets/commonwidgets.dart';

import '../../../core/colors/colors.dart';

class ComingSooonWidget extends StatelessWidget {
  const ComingSooonWidget({
    Key? key,
   
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Container(
        height: size.width * 1.3,
        width: double.infinity,
        child: Row(
          children: [
            // Date
            SizedBox(
              height: size.width * 1.3,
              width: 50,
              child: Column(
                children: [
                  Text(
                    'FEB',
                    style: TextStyle(
                        color: kGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '11',
                    style: TextStyle(
                        color: kwhite,
                        fontSize: 25,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Video
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ComingSoonVideoWidget(url:  'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/rlCRM7U5g2hcU1O8ylGcqsMYHIP.jpg',),
                kheight,
                Row(
                

                  children: [
                    // moviename
                   MovieName(movieName: 'Ms. Marvel'),
                    kwidth,
                    kwidth,
                    kwidth,
                    kwidth,

                    kwidth,
                    // icons and buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                       CustomIconButton(icon: CupertinoIcons.bell,
                       iconColor: kwhite,
                       iconSize: 25,
                        label: 'Remind Me',
                         size: 13,
                          color: kGreyColor),
                          kwidth,
                          kwidth,
                          CustomIconButton(
                            icon: Icons.info,
                           label: 'Info',
                            size: 13,
                             color: kGreyColor, 
                            iconSize: 25, 
                            iconColor: kwhite)
                      ],
                    )
                  ],
                ),
                // Release Day
                ReleaseDay(releaseDay: 'Coming on Friday',),
                kheight20,
                CustumNameDescription(
                  description: "Years after moving to a remote \ntown, ex-cop Pipa is pulled back into \nthe dark world she thought she'd left \nbehind when a corpse appears on \nher property.",
                name: 'Ms. Marvel',)
              ],
            )
          ],
        ));
  }
}




// width: size.width - 50,
//           height: size.width * .6,