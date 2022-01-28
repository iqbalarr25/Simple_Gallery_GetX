import 'package:get/get.dart';
import 'package:listview/controller/gallery_controller.dart';

class GalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GalleryController(), permanent: true);
  }
}