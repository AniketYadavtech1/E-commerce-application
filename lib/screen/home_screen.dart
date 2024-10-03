import 'package:ecommerce_appwith_rest_api/widgets/grid_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color>   Clrs = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 208, 143, 143),
      Color.fromARGB(255, 246, 111, 58),
    ];

    var imageList = [
      'assets/images/slide1.png',
      'assets/images/slide3.png',
      'assets/images/slide4.png',
      
    ];

    var iconImageList = [
      'assets/images/icon1.png',
      'assets/images/icon2.png',
      'assets/images/icon3.png',
      'assets/images/icon4.png',
      'assets/images/icon5.png',
      'assets/images/icon6.png',
      'assets/images/icon7.png',
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const  EdgeInsets.only(top: 30, left: 12, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container( 
                  padding: const  EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const  [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 4,
                        spreadRadius: 0.6,
                      )
                    ],
                  ),
                  child: const  Icon(
                    CupertinoIcons.cart,
                    size: 28,
                  ),
                ),
                Container(
                  padding: const  EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const  [
                         BoxShadow(
                          color: Colors.black,
                          blurRadius: 4,
                          spreadRadius: 0.6,
                        )
                      ]),
                  child: const  Icon(
                    CupertinoIcons.search,
                  ),
                ),
              ],
            ),
          ),
         const   Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Dear',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lets shop something!',
                  style: TextStyle(fontSize: 18, color: Colors.black45),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const  EdgeInsets.only(left: 10),
            child: Row(
              children: [
                for (int i = 0; i <imageList.length; i++)
                  Container(
                    margin: const  EdgeInsets.only(right: 10),
                    padding: const  EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 5.0,
                    decoration: BoxDecoration(
                      color: Clrs[i],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const  Text(
                                '30% off on Winter Collection',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                width: 80,
                                padding:  const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const  Center(
                                  child: Text(
                                    'Shop Now',
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          imageList[i],
                          height: 180,
                          width: 110,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
         const   SizedBox(
            height: 10,
          ),
        const   Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Categories',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
         const  SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding:  const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  for (var i = 0; i < 7; i++)
                    Container(
                      height: 50,
                      width: 50,
                      margin: const  EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const  [
                             BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: Padding(
                        padding: const  EdgeInsets.all(6),
                        child: Image.asset(iconImageList[i]),
                      ),
                    )
                ],
              ),
            ),
          ),
        
          GridItem(),
        ],
      ),
    );
  }
}
