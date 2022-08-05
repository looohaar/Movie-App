import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

TextButton playButton() {
  return TextButton.icon(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        color: kBlackColor,
        size: 35,
      ),
      label: Text(
        'Play',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: kBlackColor),
      ));
}

class IconAndButton extends StatelessWidget {
  const IconAndButton({Key? key, required this.icon, required this.label})
      : super(key: key);
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        )
      ],
    );
  }
}

class BackGroundCard extends StatelessWidget {
  const BackGroundCard({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        height: size.height * 0.6,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(url))),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconAndButton(icon: Icons.add, label: 'My List'),
              playButton(),
              IconAndButton(icon: Icons.info, label: 'Info')
            ],
          ),
        ),
      )
    ]);
  }
}
