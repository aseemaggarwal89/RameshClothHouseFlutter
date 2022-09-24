import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/image_view.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

class CarouselItemWidget extends StatelessWidget {
  final String url;
  final bool isVideo;
  final BoxFit fit;
  final double? width;

  const CarouselItemWidget({
    Key? key,
    required this.url,
    this.isVideo = false,
    this.fit = BoxFit.cover,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageView(
          url: url,
          radius: 0,
          width: width ?? screenWidth(context),
          fit: fit,
        ),
        if (isVideo)
          Container(
            alignment: Alignment.center,
            color: Colors.black12,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 0.5),
                color: Colors.black87,
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 40.0,
              ),
            ),
          )
      ],
    );
  }
}
