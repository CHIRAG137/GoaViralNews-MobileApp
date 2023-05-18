import 'package:flutter/material.dart';
import 'package:goaviralnews/size_config.dart';

class PhotoGalleryScreen extends StatefulWidget {
  final List<String> imagePaths;
  final double centralImageScale;

  const PhotoGalleryScreen(
      {Key? key, required this.imagePaths, required this.centralImageScale})
      : super(key: key);

  @override
  _PhotoGalleryScreenState createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: height / 12,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFE8ECF4),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                    ),
                    onPressed: () {},
                  ),
                ),
                Text(
                  "Galleria",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notification_add_outlined),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  widget.imagePaths.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Transform.scale(
                      scale: index == (widget.imagePaths.length ~/ 2)
                          ? widget.centralImageScale
                          : 1.0,
                      child: Image.asset(widget.imagePaths[index]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
