import 'package:ecommerce_appwith_rest_api/screen/item_screen.dart';
import 'package:ecommerce_appwith_rest_api/screen1/item_screen1.dart';
import 'package:ecommerce_appwith_rest_api/widget1/product_image1.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    var pNames = [
      'Apple Watch -M2',
      'White Tshirt',
      'Nike Shoe',
      'Nike Shoe',
      'Nike Shoe',
      'White Tshirt',
      'Nike Shoe',
      'Nike Shoe',
      'Nike Shoe',
      'White Tshirt',
      'Nike Shoe',
      'Nike Shoe',
      'White Tshirt',
      'Nike Shoe',
      'White Tshirt',
      'Nike Shoe',
      'White Tshirt',
    ];
    return GridView.builder(
      shrinkWrap: true,
      itemCount: pNames.length,
       physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 2,
        crossAxisSpacing: 8.0,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ItemScreen1()));
          },
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 0.3, spreadRadius: 0.6, color: Colors.grey),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          '30% of',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 10),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 0, right: 10),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/${pNames[index]}.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
