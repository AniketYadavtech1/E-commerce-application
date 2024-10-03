import 'package:ecommerce_appwith_rest_api/widget1/grid_item1.dart';
import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> clr1 = [
      Color.fromARGB(255, 400, 100, 200),
      Color.fromARGB(255, 100, 140, 45),
      Color.fromARGB(200, 155, 110, 200),
    ];

    List images = [
      "assets/images/slide1.png",
      "assets/images/slide4.png",
      'assets/images/slide3.png',
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
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 10,
                  ),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(spreadRadius: 0.3, blurRadius: 2),
                    ],
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.pink,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(spreadRadius: 0.3, blurRadius: 2),
                    ],
                  ),
                  child: const Icon(Icons.search),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text(
                    'Hello Dear',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 0),
                  child: const Text(
                    'Lets shop Something!',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const  EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  for (int i = 0; i < images.length; i++)
                    Container(
                      margin:  const EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.height / 2.1,
                      height: MediaQuery.of(context).size.width / 1.9,
                      padding:  const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: clr1[i],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 0.2,
                              spreadRadius: 0.2,
                            )
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               const   Text(
                                  '30 % of Winter Collection',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Container(
                                  margin: const  EdgeInsets.only(right: 25, bottom: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding:  const EdgeInsets.all(10),
                                  child: const  Text(
                                    'Shop Now',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ),
                              Container (
        
                            
                            child: Image.asset(
                              images[i],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin:  const EdgeInsets.only(left: 10),
                    child: const  Text(
                      'Top Categories',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
           
                children: [
                  for (int i = 0; i < 9; i++)
                    Container(
                      margin: const  EdgeInsets.all(2.9),
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        boxShadow:  const [
                          BoxShadow(
                            blurRadius: 0.2,
                            spreadRadius: .9,
                            color: Colors.grey
                            
                            
                          )
                        ],
                       
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(ImageIconsList[i]),
                    ),
                ],
              ),
            ),
            ItemList()
        
        
        
        
        
        
        
        
            
          ],
        ),
      ),
    );
  }
}
