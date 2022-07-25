

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: Icon(CupertinoIcons.search,color: Colors.grey,),
              suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),
              style: TextStyle(color: Colors.white),
            )
          ],

        ),
        )
        )
    );
    
  }
}