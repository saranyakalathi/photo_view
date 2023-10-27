import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PhotoView gallery Example'),
        ),
        body: PhotoGalleryExample(),
      ),
    );
  }
}

// class PhotoViewExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: PhotoView(
//         imageProvider: AssetImage('assets/gallery1.jpg'), // Replace with your image path
//         minScale: PhotoViewComputedScale.contained,
//         maxScale: PhotoViewComputedScale.covered * 2,
//       ),
//     );
//   }
// }


class PhotoGalleryExample extends StatelessWidget {
  final List<String> imageList = [
    'assets/gallery1.jpg',
    'assets/gallery2.jpg',
    'assets/gallery3.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoViewGallery.builder(
        itemCount: imageList.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(imageList[index]),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(
          color: Colors.black,
        ),
      ),
    );
  }
}
