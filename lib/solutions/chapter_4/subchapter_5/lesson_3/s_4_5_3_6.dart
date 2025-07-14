import 'package:flutter/material.dart';

class S4536 extends StatelessWidget {
  const S4536({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(name: 'Bread', price: 2.30),
      Product(name: 'Butter', price: 2.99),
      Product(name: 'Cheese', price: 1.99),
      Product(name: 'Milk', price: 1.99),
      Product(name: 'Pepper', price: 2.79)
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: Text(product.name),
          subtitle: Text('${product.price.toStringAsFixed(2)} €'),
        );
      },
    );
  }
}

class Product {
  Product({required this.name, required this.price});

  final String name;
  final double price;
}
