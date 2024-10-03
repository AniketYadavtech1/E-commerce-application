import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<String> faverote = [
    "assets/images/icon1.png",
    "assets/images/icon2.png",
    "assets/images/icon3.png",
    "assets/images/Nike Shoe.png"
  ];

  List<String> faverotelistname = [
    'T shart',
    'Watch',
    'Phone',
    'shouse',
    'T shart',
    'Watch',
    'Phone',
    'shouse'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.person),
                Container(
                    margin: EdgeInsets.only(left: 270),
                    child: Icon(Icons.search)),
                Icon(Icons.badge)
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Text(
                  'Wish List',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                faverote.length,
                (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 2, right: 2),
                          padding: EdgeInsets.all(15),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 200, 200, 100),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              faverote[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          faverotelistname[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'Suggested',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              10,
              (index) {
            
                return Container(
                  margin: EdgeInsets.all(5),
                  width: 100, 
                  height: 100, 
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 200, 200, 100),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                     

                    ]
                  ),
            
                );
              },
            )),
          )
        ],
      ),
    );
  }
}
