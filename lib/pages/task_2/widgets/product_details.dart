import 'package:flutter/material.dart';
import 'package:flutter_day_13/pages/task_2/models/product.dart';
import 'package:flutter_day_13/utils/extensions.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.network(product.imageUrl),
              20.height,
              Text("\$${product.price}"),
              20.height,
              Text(product.name),
              20.height,
              Text(product.description),
            ],
          ),
        ),
      ),
    );
  }
}
