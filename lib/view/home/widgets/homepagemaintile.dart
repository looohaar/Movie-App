import 'package:flutter/material.dart';

import '../../../core/heights/constants.dart';
import '../home.dart';

class HomePageMainTile extends StatelessWidget {
  const HomePageMainTile({Key? key, required this.heading, required this.url})
      : super(key: key);

  final String heading;
  final String url;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading(
          heading: heading,
        ),
        kheight,
        LimitedBox(
          maxHeight: size.width * 0.5,
          maxWidth: size.width * 0.35,
          // maxHeight:  size.width*0.6,
          // maxWidth:  size.width*0.4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(20, (index) {
              return MainPageCard(
                url: url,
              );
            }),
          ),
        )
      ],
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
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
    );
  }
}

class MainPageCard extends StatelessWidget {
  final String url;
  const MainPageCard({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.width * 0.55,
        width: size.width * 0.35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(url))),
      ),
    );
  }
}
