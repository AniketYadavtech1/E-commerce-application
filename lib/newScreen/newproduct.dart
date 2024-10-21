import 'package:flutter/material.dart';
class Newproduct extends StatefulWidget {
  const Newproduct({super.key});
  @override
  State<Newproduct> createState() => _NewproductState();
}
class _NewproductState extends State<Newproduct> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:  true,
        backgroundColor: Colors.blue,
        title: Text('New product'),
      ),
    );
  }
}