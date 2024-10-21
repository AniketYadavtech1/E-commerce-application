import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final title;
  final text;
  final width;
  final height;
  final color;
  final backgroundColor;

  const Header(
      {super.key,
      this.title,
      this.text,
      this.width,
      this.height,
      this.color,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'text',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 17),
          )
        ],
      ),
    );
  }
}
