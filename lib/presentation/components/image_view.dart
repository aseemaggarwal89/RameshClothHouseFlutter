import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

class ImageView extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double radius;
  final BorderRadius? borderRadius;
  final AlignmentGeometry alignment;

  const ImageView({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.radius = 8.0,
    this.borderRadius,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(radius),
      child: ExtendedImage.network(
        url,
        width: width,
        height: height,
        fit: fit,
        cache: true,
        alignment: alignment,
        borderRadius: BorderRadius.circular(radius),
        loadStateChanged: (state) {
          switch (state.extendedImageLoadState) {
            case LoadState.loading:
              return Container(
                height: height,
                width: width,
                color: ImageViewColor.kcOffWhite,
              );
            case LoadState.completed:
              return ExtendedRawImage(
                image: state.extendedImageInfo?.image,
                height: height,
                width: width,
                fit: fit,
              );
            case LoadState.failed:
              return Container(
                height: height,
                width: width,
                color: ImageViewColor.kcOffWhite,
              );
          }
        },
      ),
    );
  }
}
