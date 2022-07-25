import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900 ),),
        Spacer(),
        Icon(Icons.cast,color: Colors.white,size: 30,),
        kwidth,
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        ),
        kwidth,
      ],
    );
    
  }
}