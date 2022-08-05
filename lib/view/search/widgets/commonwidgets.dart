import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  const HeadingText({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onSubmitted: (value) {},
      backgroundColor: Colors.grey.withOpacity(0.4),
      prefixIcon: Icon(
        CupertinoIcons.search,
        color: Colors.grey,
      ),
      suffixIcon: Icon(
        CupertinoIcons.xmark_circle_fill,
        color: Colors.grey,
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
