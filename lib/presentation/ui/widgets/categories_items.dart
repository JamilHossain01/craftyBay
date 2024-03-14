import 'package:e_shop1/presentation/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({
    super.key,
    required this.tittle,
  });

  final String tittle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => ProductListScreen(
            categories: 'Shoea',
          ),
        );
      },
      child: Column(
        children: [
          Card(
            elevation: 0,
            color: Colors.amber.shade100,
            child: const Padding(
              padding: EdgeInsets.all(24),
              child: Icon(
                Icons.computer_outlined,
                color: Colors.amber,
                size: 34,
              ),
            ),
          ),
          Text(
            tittle,
            style: const TextStyle(color: Colors.amber, fontSize: 16),
          )
        ],
      ),
    );
  }
}
