import 'package:flutter/material.dart';
import 'package:food_app_ui/data/constants.dart';
import 'package:food_app_ui/data/demoData.dart';
import 'package:food_app_ui/widgets/indicator_dot.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _curentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                _curentPage = value;
              });
            },
            itemCount: demoBigImages.length,
            itemBuilder: (context, index) => Image.asset(demoBigImages[index]),
          ),
          Positioned(
              bottom: defaultPadding,
              right: defaultPadding,
              child: Row(
                children: List.generate(
                    demoBigImages.length,
                    (index) => Padding(
                          padding:
                              const EdgeInsets.only(left: defaultPadding / 4),
                          child: IndicatorDot(isActive: index == _curentPage),
                        )),
              ))
        ],
      ),
    );
  }
}
