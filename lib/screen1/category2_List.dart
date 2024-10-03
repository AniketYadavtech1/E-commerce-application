

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Category2 extends StatefulWidget {
  const Category2({super.key});

  @override
  State<Category2> createState() => _Category2State();
}

class _Category2State extends State<Category2> {
  
  late Future<List<dynamic>> futureData;

  List<dynamic>? products;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  Future<List<dynamic>> fetchData() async {

    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      setState(() {
        products = data;
      });
      return data;
    } else {
      throw Exception('Failed to load products');
    }
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category 2'),
      ),
      body: products == null 
          ? Center(child: CircularProgressIndicator()) 
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products!.length,
              itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(products![index]['image'],
                      
                      
                      ),
                      fit: BoxFit.cover, 
                     
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        products![index]['title'],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '\$${products![index]['price'].toString()}',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
