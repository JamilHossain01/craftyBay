import 'package:e_shop1/presentation/state_controler/main_bottom_nav_controller.dart';
import 'package:e_shop1/presentation/ui/screens/cart_screen.dart';
import 'package:e_shop1/presentation/ui/screens/category_screen.dart';
import 'package:e_shop1/presentation/ui/screens/home_screen.dart';
import 'package:e_shop1/presentation/ui/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomScreen extends StatefulWidget {
  const MainBottomScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomScreen> createState() => _MainBottomScreenState();
}

class _MainBottomScreenState extends State<MainBottomScreen> {
  final List<Widget> _screens = const [
    HomeScreen(),
    CateGoryScreen(),
    CartScreen(),
    WishList(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(builder: (controller) {
      return Scaffold(
        body: _screens[controller.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: controller.changeIndex,

            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  label: 'home'),
              // ignore: prefer_const_constructors
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category,
                  ),
                  label: 'Categories'),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                  label: 'Cart'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Wish'),
            ]),
      );
    });
  }
}
