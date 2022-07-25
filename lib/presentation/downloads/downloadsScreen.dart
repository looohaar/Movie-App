



import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  
 
   ScreenDownloads({Key? key}) : super(key: key);
   final listViewWidgets=[
    SmartDownloads(),  
    Section2(),
    Section3()
   ];

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads',)),
      body: ListView.separated(
        padding: EdgeInsets.all(5),
        itemBuilder:  (context,index)=>listViewWidgets[index],
       separatorBuilder:(context,index)=> SizedBox(height: 22),
        itemCount: listViewWidgets.length)
          );

         
      

    
    
  }
}
class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          width: double.infinity,
           child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)) ,
            color: kButtonColorBlue,
            onPressed: (){},
            child: const Text('Set Up',
            textAlign:TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kButttonColorWhite),
              ),
              ),
         ),
          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kButttonColorWhite,
          onPressed: (){},
          child:const Text('Find More to Download',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:kBlackColor,),),
           ),


      ],
    );
    
  }
}
class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    final List imageList=[
    "https://www.themoviedb.org/t/p/w220_and_h330_face/en6lrlJ1DhyvkeZEqrk3R6EJz1p.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/bOth4QmNyEkalwahfPCfiXjNh1r.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/74xTEgt7R36Fpooo50r9T25onhq.jpg",
     

      
  ];
    return Column(
      children: [
         const  Text('Introducing Downloads for You',
        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,),
          kheight,

        const  Text("We'll download a personalised selection of\n movies and shows for you, so there's\n always something to watch on your\n device.",
        style: TextStyle(fontSize:18,color: Colors.grey)
          ,textAlign: TextAlign.center,),
          Container(
            height: size.width,
            width: size.width,
            color: kBlackColor,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.4),

                  radius: size.width*0.4,
                  ),
                  
                ),
                DownloadsImageWidget(
                  
                  size: Size(size.width*0.4, size.width*0.55),
                 imageList: imageList[0],
                 margin: EdgeInsets.only(right: 170),
                 angle: -19*pi/180,
                 radius: 10,
                 ),
                DownloadsImageWidget(
                  
                  size: Size(size.width*0.4, size.width*0.55),
                 imageList: imageList[1],
                 margin: EdgeInsets.only(left: 170),
                 angle: 19*pi/180,
                  radius: 10,
                 ),
                   
                   DownloadsImageWidget(
                  
                  size: Size(size.width*0.45, size.width*0.65),
                 imageList: imageList[2],
                 margin: EdgeInsets.only(top:10),
                 angle: 0,
                  radius: 10,
                 ),

      ],
    )
    )
    
  ]);}
}
class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        
        children: const[
         
          Icon(Icons.settings,
          color: Colors.grey,
          size: 25,
          ),
          kwidth,
          Text('Smart Downloads',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey))
          

        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
   DownloadsImageWidget({
    Key? key,
    required this.size,
    required this.imageList,
    required this.margin,
    this.angle=0,
    this.radius=10
  }) : super(key: key);

  final Size size;
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: 
          NetworkImage(imageList))
        ),
      ),
    );
  }
}