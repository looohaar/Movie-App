import 'package:get/get.dart';
import 'package:netflix_clone/model/upcoming_model/upcoming_model.dart';
import 'package:netflix_clone/services/home_services/upcoming_services.dart';

class UpcomingController extends GetxController {
  Rx<UpcomingModel?>? imageData = UpcomingModel().obs;
  RxBool isLoading = true.obs;
  void getImageData() async {
    final upcomingImage = await UpcomingServices().fetchImage();
    if (upcomingImage != null) {
      imageData?.value = upcomingImage;
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
