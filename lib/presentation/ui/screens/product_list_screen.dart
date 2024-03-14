import 'package:flutter/material.dart';

import '../widgets/home/product_card_items.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, this.categories});
  final String? categories;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categories ?? "Product"),
      ),
      body: GridView.builder(
        itemCount: 52,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8,
            crossAxisSpacing: 4,
            childAspectRatio: 0.65,
            crossAxisCount: 3),
        itemBuilder: (context, index) {
          return const FittedBox(
            child: ProductCardItems(),
          );
        },
      ),
    );
  }
}
