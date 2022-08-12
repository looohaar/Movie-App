import 'package:get/get.dart';
import 'package:netflix_clone/model/home_topmovies_model/home_topmovies_model.dart';
import 'package:netflix_clone/services/home_services/topmovies_services.dart';

class TopMoviesController extends GetxController {
  Rx<HomeTopmoviesModel> imageData = HomeTopmoviesModel().obs;
  RxBool isLoading = true.obs;
  void getImageData() async {
    final topmoviesImage = await TopMoviesServices().fetchImage();
    if (topmoviesImage != null) {
      imageData.value = topmoviesImage;
      isLoading.value = false;
    } else {
      null;
    }
  }

  @override
  void onInit() {
    getImageData();
    super.onInit();
  }
}
