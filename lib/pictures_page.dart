import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PicturesPage extends StatelessWidget {
  const PicturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery.builder(
      scrollPhysics: const BouncingScrollPhysics(),
      builder: (BuildContext context, int index) {
        return PhotoViewGalleryPageOptions(
          imageProvider: NetworkImage(
              "https://i.picsum.photos/id/459/536/354.jpg?hmac=RAx8_tio1Q_S-Hox7V_L8h9Q7SFUP_jFS5KGnrx7an4"),
          initialScale: PhotoViewComputedScale.contained * 0.8,
          heroAttributes: PhotoViewHeroAttributes(tag: "1"),
        );
      },
      itemCount: 1,
      loadingBuilder: (context, event) =>
          Center(child: CircularProgressIndicator()),
      // backgroundDecoration: widget.backgroundDecoration,
      // pageController: widget.pageController,
      // onPageChanged: onPageChanged,
    ));
  }
}
