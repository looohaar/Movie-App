import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/main_page/widgets/main_page.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    
    theme: ThemeData(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      scaffoldBackgroundColor: backgroundColor,
      primarySwatch: Colors.blue,
      backgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white)

      )
    ),
    debugShowCheckedModeBanner: false,
    home: MainPage(),
   );
   
  }
}
