import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  List<Color> colorimg = [
    Color.fromARGB(200, 200, 400, 500),
    Color.fromARGB(255, 400, 400, 100),
    Color.fromARGB(255, 255, 200, 100),
    Color.fromRGBO(203, 100, 255, 100),
    Color.fromARGB(230, 100, 427, 250),
  ];

  var ImageIconsList = [
    "assets/images/icon1.png",
    "assets/images/icon2.png",
    "assets/images/icon3.png",
    "assets/images/icon4.png",
    "assets/images/icon5.png",
    "assets/images/icon6.png",
    "assets/images/icon7.png",
    "assets/images/icon8.png",
    "assets/images/icon9.png",
    "assets/images/icon3.png",
    "assets/images/icon4.png",
    "assets/images/icon5.png",
    "assets/images/icon6.png",
    "assets/images/icon7.png",
    "assets/images/icon8.png",
    "assets/images/icon9.png",
  ];

  List images = [
    "assets/images/slide1.png",
    "assets/images/slide4.png",
    'assets/images/slide3.png',
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome to Home Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < colorimg.length; i++)
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('30 % Winter Collection'),
                                SizedBox(
                                  height: 100,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 40),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 100,
                                  height: 50,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'shop now',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 220,
                              height: 200,
                              child: Image.asset(images[i % images.length]),
                            ),
                          ],
                        ),
                      ),
                      height: 200,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorimg[i],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < colorimg.length; i++)
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.8,
                            spreadRadius: 0.9,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(ImageIconsList[i]),
                  )
              ],
            ),
          ),












        ],
      ),
    );
  }
}
