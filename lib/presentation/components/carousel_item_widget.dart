import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/image_view.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:photo_view/photo_view.dart';

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

class MySecondScreen extends StatelessWidget {
  final String photos;

  const MySecondScreen({Key? key, required this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySecondScreen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MySecondScreen'),
          centerTitle: true,
        ),
        body: GestureDetector(
            child: PhotoView(
              imageProvider: NetworkImage(photos),
              backgroundDecoration: const BoxDecoration(color: Colors.white),
            ),
            onTap: () {
              // Navigator.pop(
              //     context, MaterialPageRoute(builder: (context) => MyHomePage()));
            }),
      ),
    );
  }
}

Widget imageDialog(text, path, context) {
  return Dialog(
    // backgroundColor: Colors.transparent,
    // elevation: 0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$text',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close_rounded),
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 220,
          height: 200,
          child: Image.network(
            '$path',
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}

class ImageDialog extends StatelessWidget {
  const ImageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/tamas.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}
