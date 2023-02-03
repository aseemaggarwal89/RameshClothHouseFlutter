import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

enum MediaType { IMAGE, VIDEO }

class ProductShowcaseThumbnailWidget extends StatelessWidget {
  final bool isSelected;
  final String thumbnailUrl;
  final MediaType type;
  final Function()? onTap;

  const ProductShowcaseThumbnailWidget({
    Key? key,
    this.isSelected = false,
    required this.thumbnailUrl,
    required this.onTap,
    this.type = MediaType.IMAGE,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(196, 196, 196, 1.0),
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: isSelected
                    ? Theme.of(context).primaryColorDark
                    : const Color.fromRGBO(196, 196, 196, 1.0),
              ),
            ),
            child: AspectRatio(
              aspectRatio: 1.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: ExtendedImage.network(
                  thumbnailUrl,
                  cache: true,
                  width: 48.0,
                  height: 48.0,
                  alignment: Alignment.center,
                  fit: BoxFit.fitWidth,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          if (MediaType.VIDEO == type)
            Container(
              width: 48.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.black12,
              ),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 0.5),
                  color: Colors.black87,
                ),
                padding: const EdgeInsets.all(4.0),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 14.0,
                ),
              ),
            )
        ],
      ),
    );
  }
}
