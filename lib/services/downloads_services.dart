import 'dart:convert';
import 'dart:developer';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:netflix_clone/core/strings/base_url.dart';
import 'package:netflix_clone/model/downloads_model/downloads_model.dart';

import '../model/apiKey.dart';

class DownloadsServices {
  var url =
      "https://api.themoviedb.org/3/trending/all/day?api_key=a0a5787e52b44faadb0ed8d923d62cf2";

  Future<DownloadsModel?> fetchImage() async {
    try {
      var response = await http.get(Uri.parse(url));
      log("${response.statusCode}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        final decodedvalue = jsonDecode(response.body);
        return DownloadsModel.fromJson(decodedvalue);
      } else if (response.statusCode != 200 || response.statusCode != 201) {
        Get.snackbar("Network Error", "Check your internet connection");
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
