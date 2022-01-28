import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GalleryController extends GetxController {
  var modal = false.obs;
  var viewImage = "".obs;
  var imageName = "".obs;

  void modalOpen(String image, String imageNameOld){
    viewImage.value = image;
    imageName.value = imageNameOld;
    modal.value = true;
  }
  void modalClose(){
    viewImage.value = "";
    modal.value = false;
  }
}