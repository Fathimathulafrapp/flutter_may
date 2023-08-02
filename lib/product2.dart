
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/dummyproduct.dart';

class ProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final productid= ModalRoute.of(context)?.settings.arguments;
    final product= dummyproduct.firstWhere((data) => data["id"]==productid);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        children: [
          Image.asset(product["image"]),
          Text("${product["id"].toString()}"),
          Text("${product["name"]}"),
          Text("${product["description"]}"),

        ],
      ),
    );

  }

}