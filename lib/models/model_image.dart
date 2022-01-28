part of 'model.dart';

class ImageList{
  final String image, imageName;

  ImageList({required this.image, required this.imageName});

  static List<ImageList> imageList = [
    ImageList(image: "waifu1.jpg", imageName: "waifu1"),
    ImageList(image: "waifu2.png", imageName: "waifu2"),
    ImageList(image: "waifu3.jpg", imageName: "waifu3"),
    ImageList(image: "waifu4.jpg", imageName: "waifu4"),
    ImageList(image: "waifu5.png", imageName: "waifu5"),
    ImageList(image: "waifu6.jpg", imageName: "waifu6"),
    ImageList(image: "waifu7.jpg", imageName: "waifu7"),
    ImageList(image: "waifu8.jpg", imageName: "waifu8"),
  ];
}