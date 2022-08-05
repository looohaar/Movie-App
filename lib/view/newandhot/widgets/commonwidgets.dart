import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

import '../../../core/heights/constants.dart';

// customapp bar

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            kwidth,
            Text(
              title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            Spacer(),
            Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            ),
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
            indicator: BoxDecoration(
                color: kwhite, borderRadius: BorderRadius.circular(30)),
            labelColor: kBlackColor,
            unselectedLabelColor: kwhite,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            isScrollable: true,
            tabs: [
              Tab(
                child: Text('🍿 Coming Soon'),
              ),
              Tab(
                child: Text("👀 Everyone's Watching"),
              )
            ])
      ],
    );
  }
}

// custom name and description

class CustumNameDescription extends StatelessWidget {
  const CustumNameDescription(
      {Key? key, required this.description, required this.name})
      : super(key: key);
  final String name;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
              color: kwhite, fontWeight: FontWeight.w900, fontSize: 20),
        ),
        kheight,
        Text(
          description,
          style: TextStyle(color: kGreyColor, fontSize: 17),
        )
      ],
    );
  }
}
// custom icon widget

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.size,
    required this.color,
    required this.iconSize,
    required this.iconColor,
  }) : super(key: key);
  final IconData icon;
  final String label;
  final double size;
  final Color color;
  final double iconSize;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
        kheight,
        Text(
          label,
          style: TextStyle(fontSize: size, color: color),
        ),
      ],
    );
  }
}

class MovieName extends StatelessWidget {
  const MovieName({Key? key, required this.movieName}) : super(key: key);
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Text(
      movieName,
      style:
          TextStyle(color: kwhite, fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}

// coming soon video widget

class ComingSoonVideoWidget extends StatelessWidget {
  const ComingSoonVideoWidget({Key? key, required this.url}) : super(key: key);

  final String url;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: size.width - 50,
          height: size.width * .6,
          child: Image.network(
            url,
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
    );
  }
}

//Release Day

class ReleaseDay extends StatelessWidget {
  const ReleaseDay({Key? key, required this.releaseDay}) : super(key: key);
  final String releaseDay;
  @override
  Widget build(BuildContext context) {
    return Text(
      releaseDay,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: kGreyColor),
    );
  }
}

// Everyone watching video

class EveryoneWatchingVideoWidget extends StatelessWidget {
  const EveryoneWatchingVideoWidget({Key? key, required this.url})
      : super(key: key);

  final String url;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.width * .6,
          child: Image.network(
            url,
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
    );
  }
}
