import 'package:ecommerce_appwith_rest_api/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Obx(() {
        if (productController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, 
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemCount: productController.productList.length,
          itemBuilder: (context, index) {
            final product = productController.productList[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    color: Colors.white

                    
                  )
                ]
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
               height: 50,
                
                decoration: BoxDecoration(
                  color: Colors.blue
               
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      product.image ?? '',
                      height: 120,
                      fit: BoxFit.cover,
                      
                    ),
                  
                    Text(
                      product.title ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                   
                    Text(
                      '\$${product.price?.toStringAsFixed(1) ?? ''}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
