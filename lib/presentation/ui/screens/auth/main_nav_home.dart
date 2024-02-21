import 'package:e_shop1/presentation/ui/screens/cart_screen.dart';
import 'package:e_shop1/presentation/ui/screens/category_screen.dart';
import 'package:e_shop1/presentation/ui/screens/home_screen.dart';
import 'package:e_shop1/presentation/ui/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';

class MainBottomScreen extends StatefulWidget {
  const MainBottomScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomScreen> createState() => _MainBottomScreenState();
}

class _MainBottomScreenState extends State<MainBottomScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    HomeScreen(),
    CateGoryScreen(),
    CartScreen(),
    WishList(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (index) {
            _selectedIndex = index;
            if (mounted) {
              setState(
                () {},
              );
            }
          },
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
                  Icons.dashboard,
                ),
                label: 'home'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: 'home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outlined), label: 'home'),
          ]),
    );
  }
}
