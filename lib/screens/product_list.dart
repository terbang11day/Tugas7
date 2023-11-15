import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> productList;

  ProductListPage({required this.productList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(productList[index].name),
            subtitle: Text('Harga: ${productList[index].price}'),
            onTap: () {
              // Tambahkan logika jika diperlukan saat item di-tap
            },
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final int price;
  final String description;

  Product({required this.name, required this.price, required this.description});
}