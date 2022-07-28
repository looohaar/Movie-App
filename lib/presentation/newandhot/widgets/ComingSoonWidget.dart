
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

import '../../../core/colors/colors.dart';

class ComingSooonWidget extends StatelessWidget {
  const ComingSooonWidget({
    Key? key,
   
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Container(
        height: size.width * 1.2,
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
                Stack(
                  children: [
                    SizedBox(
                      width: size.width - 50,
                      height: size.width * .6,
                      child: Image.network(
                        'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/rlCRM7U5g2hcU1O8ylGcqsMYHIP.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.5),
                        radius: 30,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.volume_off,
                              size: 30,
                            )),
                      ),
                    ),
                  ],
                ),
                kheight,
                Row(
                

                  children: [
                    // moviename
                    Text(
                      'Ms.Marvel',
                      style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    kwidth,
                    kwidth,
                    kwidth,
                    kwidth,

                    kwidth,
                    // icons and buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Icon(
                              CupertinoIcons.bell,
                              color: kwhite,
                              size: 30,
                            ),
                            Text(
                              'Remind Me',
                              style: TextStyle(
                                  color: kGreyColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        kwidth,
                        Column(
                          children: const [
                            Icon(
                              CupertinoIcons.info,
                              color: kwhite,
                              size: 30,
                            ),
                            Text(
                              'Info',
                              style: TextStyle(
                                  color: kGreyColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                // Release Day
                Text(
                  'Coming on Friday',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kGreyColor),
                ),
                kheight20,
                Text(
                  'Ms.Marvel',
                  style: TextStyle(
                      color: kwhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                kheight,
                Text(
                  "asdfadsfdsf adfafadsfa asdf\n adfafadsfa asdf afadfa asdfdfd\n asdfadsfdsf adfafadsfa",
                  style: TextStyle(color: kGreyColor, fontSize: 17),
                )
              ],
            )
          ],
        ));
  }
}