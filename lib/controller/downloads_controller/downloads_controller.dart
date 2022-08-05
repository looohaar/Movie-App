import 'package:get/get.dart';
import 'package:netflix_clone/model/downloads_model/downloads_model.dart';
import 'package:netflix_clone/services/downloads_services.dart';

class DownloadsController extends GetxController {
  Rx<DownloadsModel?>? imageData = DownloadsModel().obs;
  RxBool isLoading = true.obs;
  void getImageData() async {
    final downloadsImage = await DownloadsServices().fetchImage();
    if (downloadsImage != null) {
      imageData?.value = downloadsImage;
      isLoading.value = false;
    } else {
      return null;
    }
  }
}
