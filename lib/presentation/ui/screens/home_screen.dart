import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shop1/presentation/ui/utility/image_path.dart';
import 'package:e_shop1/presentation/ui/widgets/home/circle_button.dart';
import 'package:flutter/material.dart';

import '../widgets/image_carosel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [searchTextField(), ImageCarouSel()],
          ),
        ),
      ),
    );
  }

  TextFormField searchTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.grey.shade200,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

AppBar get appBar {
  return AppBar(
    title: Image.asset(AssetImagePath.logoNav),
    actions: [
      CircleIconButton(
        onTap: () {},
        iconData: Icons.person,
      ),
      const SizedBox(
        width: 16,
      ),
      CircleIconButton(onTap: () {}, iconData: Icons.call),
      const SizedBox(
        width: 16,
      ),
      CircleIconButton(
        onTap: () {},
        iconData: Icons.notifications_active,
      ),
    ],
  );
}
