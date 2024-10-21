import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var pName = [
    'Apple Watch -M2',
    'White Tshirt',
    'Ear Headphone',
    'Nike Shoe',
  ];
  var pSizes = [
    '36',
    'M',
    'S',
    '40',
  ];

  List<int> productCounts = [1, 1, 1, 1];
  List<double> productPrices = [19, 9, 39, 49];
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    totalPrice = calculateTotalPrice();
  }

  double calculateTotalPrice() {
    double total = 0;
    for (int i = 0; i < productCounts.length; i++) {
      total += productCounts[i] * productPrices[i];
    }
    return total;
  }

  void increment(int index) {
    setState(() {
      productCounts[index]++;
      totalPrice = calculateTotalPrice();
    });
  }

  void decrement(int index) {
    if (productCounts[index] > 1) {
      setState(() {
        productCounts[index]--;
        totalPrice = calculateTotalPrice();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Align(
              child: Text(
                'My Cart',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                for (int i = 0; i < pName.length; i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 248, 200),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width / 4,
                              margin: EdgeInsets.only(left: 8),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 200, 255, 200),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                "assets/images/${pName[i]}.png",
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    pName[i],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\$${(productCounts[i] * productPrices[i]).toStringAsFixed(2)}",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Size: ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    pSizes[i],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    height: 25,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            decrement(i);
                                          },
                                          child: Icon(CupertinoIcons.minus),
                                        ),
                                        Text(productCounts[i].toString()),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            increment(i);
                                          },
                                          child: Icon(CupertinoIcons.plus),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${totalPrice.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent,
                  ),

                  child: InkWell(
                    onTap: () {
                      
                      
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Order Now",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
