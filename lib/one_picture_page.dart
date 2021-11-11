import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class OnePicture extends StatelessWidget {
  PhotoViewControllerBase<PhotoViewControllerValue>? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: PhotoView(
                  minScale: PhotoViewComputedScale.contained * 0.8,
                  maxScale: PhotoViewComputedScale.covered * 1,
                  heroAttributes: const PhotoViewHeroAttributes(
                      tag: "galleryItems[index].id"),
                  loadingBuilder: (context, event) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  // controller: controller,
                  imageProvider: const NetworkImage(
                      "https://i.picsum.photos/id/459/536/354.jpg?hmac=RAx8_tio1Q_S-Hox7V_L8h9Q7SFUP_jFS5KGnrx7an4"),
                ),
              ),
            ),
            // Expanded(
            //   child: Container(
            //     child: PhotoView(
            //       heroAttributes: const PhotoViewHeroAttributes(
            //           tag: "galleryItems[index].id"),
            //       loadingBuilder: (context, event) => const Center(
            //         child: CircularProgressIndicator(),
            //       ),
            //       // controller: controller,
            //       imageProvider: const NetworkImage(
            //           "https://i.picsum.photos/id/459/536/354.jpg?hmac=RAx8_tio1Q_S-Hox7V_L8h9Q7SFUP_jFS5KGnrx7an4"),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
