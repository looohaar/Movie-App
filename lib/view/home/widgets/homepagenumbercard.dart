import 'dart:ui';

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

class HomepageNumberCard extends StatelessWidget {
  const HomepageNumberCard({Key? key, required this.heading, required this.url})
      : super(key: key);
  final String heading;
  final String url;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading(heading: heading),
        kheight,
        LimitedBox(
        maxHeight:  size.width*0.5,
        maxWidth:  size.width*0.4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(20, (index) {
              return NumberCard( index: index,
              url: url);
            }),
          ),
        )
      ],
    );
  }
}

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.index,
    required this.url,
  }) : super(key: key);

 
  final String url;
  final int index;

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 35,
                 height: size.width * 0.55,
              ),
              Container(
                height: size.width * 0.55,
                width: size.width * 0.35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(url))),
              )
            ],
          ),
          Positioned(
            bottom: -22,
            left: 2,
        
          
            child: BorderedText(
              child: Text('${index+1}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 100),
                ),
              strokeColor: kwhite,
              strokeWidth: 4,
              )
              )
        ],
      ),
    );
  }
}


class Heading extends StatelessWidget {
  const Heading({Key? key, required this.heading}) : super(key: key);
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          color: Colors.white,
           fontWeight: FontWeight.bold,
            fontSize: 25),
    );
  }
}
