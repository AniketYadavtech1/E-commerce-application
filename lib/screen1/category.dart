import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  late Future<List<dynamic>> FutureData;

  List<dynamic>? products;

  @override
  void initState() {
    FutureData = featchData();
    super.initState();
  }

  Future<List<dynamic>> featchData() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      setState(() {
        products = data;
      });

      print(data);
      return data;
    } else {
      print('Failed to load post: ${response.statusCode}');
      throw Exception('Failed to load post');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Categoryapi'),
      ),
      body: GridView.builder(
          itemCount: products?.length ?? 0,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
               
                  
                  // width: 100,
                  // height: 100,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0.8,
                        spreadRadius: 0.7,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(products![index]['image']),
                    ),
                  ),
                ),

            //  Text(products![index]['price']['\$'].toString()),

            Text(products![index]['price'] is Map ? products![0]['price']['\$'].toString():products![index]['price'].toString(),)

            //  Text(NumberFormat.currency(Symbol: '\$').format(products![index]['price']))




              ],
            );
          }),
    );
  }
}
