
import 'package:flutter/material.dart';

class MainBottomScreen extends StatefulWidget {
  const MainBottomScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomScreen> createState() => _MainBottomScreenState();
}

class _MainBottomScreenState extends State<MainBottomScreen> {
  int _selectedIndex = 0;
  final List<Widget>_screens = const[
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishList(),
  ]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ,
       bottomNavigationBar:BottomNavigationBar(
          backgroundColor: Colors.pink,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
       showUnselectedLabels: true,
        onTap: (index) {
          _selectedIndex =index;
          setState(() {

          },);

        }, items: [
      BottomNavigationBarItem(icon:Icon(Icons.home_filled,),label: 'home'),
      BottomNavigationBarItem(icon:Icon(Icons.home_filled,),label: 'home'),
      BottomNavigationBarItem(icon:Icon(Icons.home_filled,),label: 'home'),
      BottomNavigationBarItem(icon:Icon(Icons.home_filled),label: 'home'),



    ]
    ),

    );
  }
}
