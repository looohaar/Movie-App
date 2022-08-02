import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/view/search/search.dart';
import 'package:netflix_clone/view/search/widgets/commonwidgets.dart';

import '../../../core/colors/constants/constants.dart';

class SearchMain extends StatelessWidget {
  const SearchMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SearchBar(),
      ],
      
    );
    
  }
}


class SearchMainScreenBuilder extends StatelessWidget {
  const SearchMainScreenBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),
          kheight,
          HeadingText(heading: 'Top Searches'),
          kheight,
          Expanded(
            child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index)=>
            SearchMainTile(movieName: 'Movie Name',tileImage: imageUrl1,),
            separatorBuilder: (context, index) => kheight, 
            itemCount: 20,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
             ),
          )
         
      
         
         
        ],
      
      ),
      )
      );
  }
}

class SearchMainTile extends StatelessWidget {
  const SearchMainTile({
    Key? key,
    required this.tileImage,
    required this.movieName,

    
  }) : super(key: key);

final String tileImage;
final String movieName;

  @override
  Widget build(BuildContext context) {
     final Size size= MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width*0.35,
          height: size.width*0.2,
          decoration: BoxDecoration(
            
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(tileImage)),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(movieName,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white),
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25, 
            ),
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 22,
            ),
            Icon(CupertinoIcons.play_fill,color: Colors.white,)
          ],
        )

      ],

    );
  }
}