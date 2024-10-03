import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({super.key});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      height: 300,
      autoPlayInterval: 1000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p2.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p2.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p2.png"),
        ),
      ],
    );
  }
}
