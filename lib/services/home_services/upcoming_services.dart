import 'dart:convert';

import 'package:get/get.dart';
import 'package:netflix_clone/model/upcoming_model/upcoming_model.dart';
import 'package:http/http.dart' as http;
class UpcomingServices {
  var url= "https://api.themoviedb.org/3/movie/upcoming?api_key=a0a5787e52b44faadb0ed8d923d62cf2&page=1";
  Future<UpcomingModel?> fetchImage() async{
    try {
      var response= await http.get(Uri.parse(url));
      if(response.statusCode==200 || response.statusCode==201){
        final decodedValue= jsonDecode(response.body);
        return UpcomingModel.fromJson(decodedValue);
      }else if(response.statusCode!=200 || response.statusCode!=201){
   Get.snackbar("Network Error", "Check your internet connection");
      }else{
        return null;
      }

    } catch (e) {
      print(e.toString());
      
    }
  }
  
}