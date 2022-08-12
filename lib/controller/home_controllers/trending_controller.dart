import 'package:get/get.dart';
import 'package:netflix_clone/model/home_trending_model/home_trending_model.dart';
import 'package:netflix_clone/services/home_services/trending_services.dart';

class TrendingController extends GetxController {
  Rx<HomeTrendingModel?>? imageData = HomeTrendingModel().obs;
  RxBool isLoading = true.obs;
  void getImageData() async {
    final trendingImage = await TrendingServices().fetchImage();
    if (trendingImage != null) {
      imageData?.value = trendingImage;
      isLoading.value = false;
    } else {
      return null;
    }
  }

  @override
  void onInit() {
    getImageData();
    super.onInit();
  }
}
