import 'package:e_shop1/presentation/ui/widgets/categories_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_controler/main_bottom_nav_controller.dart';

class CateGoryScreen extends StatefulWidget {
  const CateGoryScreen({super.key});

  @override
  State<CateGoryScreen> createState() => _CateGoryScreenState();
}

class _CateGoryScreenState extends State<CateGoryScreen> {
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
          title: Text('Categories'),
          elevation: 3,
        ),
        body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 12,
              crossAxisSpacing: 8,
              childAspectRatio: 0.98,
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return const FittedBox(
                child: CategoriesItems(tittle: 'Electronics'));
          },
        ),
      ),
    );
  }
}
