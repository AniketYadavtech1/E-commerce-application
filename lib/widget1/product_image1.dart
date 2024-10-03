import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImage1 extends StatefulWidget {
  const ProductImage1({super.key});

  @override
  State<ProductImage1> createState() => _ProductImage1State();
}

class _ProductImage1State extends State<ProductImage1> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: 300,
      indicatorRadius: 4,
      isLoop: true,
      autoPlayInterval: 1000,
      indicatorBackgroundColor: Colors.grey,
      indicatorColor: Colors.white,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/images/p1.png"),
        ),
      ],
    );
  }
}
