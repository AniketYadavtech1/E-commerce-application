import 'package:ecommerce_appwith_rest_api/screen1/home_screen1.dart';
import 'package:ecommerce_appwith_rest_api/widget1/product_image1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemScreen1 extends StatefulWidget {
  const ItemScreen1({super.key});

  @override
  State<ItemScreen1> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen1> {
  double _rating = 0;
  bool _isSelected = false;

  void _incrementRating() {
    if (_rating < 5) {
      _rating += 0;
    }
  }

  void _decrementRating() {
    if (_rating < 0) {
      _rating -= 0;
    }
  }

  void _toggleSelected() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen1()));
              },
              child: Container(
                color: Color.fromARGB(255, 100, 130, 120),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.arrow_back)]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 100, 130, 120),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 2,
              child: Stack(
                children: [ProductImage1()],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                RatingBar.builder(
                  itemSize: 30,
                  initialRating: _rating,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  glowColor: Colors.yellow,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, index) => Icon(Icons.star,
                      color: index < _rating ? Colors.yellow : Colors.grey),
                  onRatingUpdate: (rating) {
                    setState(
                      () {
                        _rating = rating;
                      },
                    );
                  },
                ),
                Text(
                  selectionColor: Colors.yellow,
                  ' $_rating',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 9),
              child: Row(
                children: [
                  Text(
                    '${140}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                "Lorem Ipsum is Lorem Ipsum has been   been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: MediaQuery.of(context).size.height / 13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add Card',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isSelected = !_isSelected;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.favorite,
                      color: _isSelected ? Colors.red : Colors.grey,
                      size: 50,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
