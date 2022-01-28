part of 'page.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  final GalleryController _galleryController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
        backgroundColor: Colors.red,
        actionsIconTheme: IconThemeData(size: 25),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            GridView.builder(
              itemCount: ImageList.imageList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, i) => InkWell(
                onTap: () {
                  _galleryController.modalOpen(ImageList.imageList[i].image,
                      ImageList.imageList[i].imageName);
                },
                child: Image.asset(
                  "assets/images/" + ImageList.imageList[i].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Obx(
              () => _galleryController.viewImage.value != ""
                  ? Container(
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.6,
                            child: GestureDetector(
                              onTap: () {
                                _galleryController.modalClose();
                              },
                              child: Container(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "assets/images/" +
                                        _galleryController.viewImage.string,
                                    height: MediaQuery.of(context).size.height *
                                        0.7),
                                Text(
                                  _galleryController.imageName.string,
                                  style: textWhiteImage,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Opacity(opacity: 0),
            ),
          ],
        ),
      ),
    );
  }
}
