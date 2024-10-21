import 'dart:convert';

import 'package:http/http.dart' as http;

class Productrepository {
  var url = "https://fakestoreapi.com/products";

  Featchapi() async {
    var response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    return json.decode(response.body);
  }
}
