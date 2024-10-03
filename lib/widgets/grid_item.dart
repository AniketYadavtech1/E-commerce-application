import 'package:ecommerce_appwith_rest_api/screen/item_screen.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  var pNames = [
    'Apple Watch -M2',
    'White Tshirt',
    'Nike Shoe',
    'Apple Watch -M2',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 4,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '30% off',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Icon(Icons.favorite, color: Colors.redAccent),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemScreen(),),);
                    },
                    child: Image.asset(
                      "assets/images/${pNames[index]}.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pNames[index],
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$100",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "30% off",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
