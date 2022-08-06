import 'dart:convert';

import 'package:get/get.dart';
import 'package:netflix_clone/model/home_trending_model/home_trending_model.dart';
import 'package:http/http.dart' as http;
class TrendingServices {
  var url="https://api.themoviedb.org/3/trending/all/day?api_key=a0a5787e52b44faadb0ed8d923d62cf2";
  Future<HomeTrendingModel?> fetchImage()async{
    try {
      var response= await http.get(Uri.parse(url));
      //  var response1= await http.put(Uri.parse(url));
      if (response.statusCode==200||response.statusCode==201) {
        final decodedValue= json.decode(response.body);
        return HomeTrendingModel.fromJson(decodedValue);
        
      }else if(response.statusCode!=200 ||response.statusCode!=201){
        Get.snackbar("Network Error", "Check your internet connection");

      }
      else{
        return null;
      }

    } catch (e) {
      print(e.toString());
      
    }
    
  }
}