import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Category3Loop extends StatefulWidget {
  const Category3Loop({super.key});

  @override
  State<Category3Loop> createState() => _Category3LoopState();
}

class _Category3LoopState extends State<Category3Loop> {
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
        title: Text('Welcome to Category 3 Loop'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data found'));
          }

          products = snapshot.data;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < products!.length; i++)
                  Container(
                    width: 120,
                    height: 130,
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.only(
                        left: 20, right: 20, bottom: 30, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.7,
                          spreadRadius: 0.6,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.network(products![i]['image'], fit: BoxFit.cover),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
