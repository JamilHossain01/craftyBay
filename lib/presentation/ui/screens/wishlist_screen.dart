import 'package:e_shop1/presentation/ui/widgets/home/product_card_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_controler/main_bottom_nav_controller.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (Value) {
        Get.find<MainBottomNavController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.find<MainBottomNavController>().backToHome();
              },
              icon: Icon(Icons.arrow_back_sharp)),
          title: Text('Wishlist'),
          elevation: 3,
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
      ),
    );
  }
}
