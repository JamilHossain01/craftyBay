import 'package:e_shop1/presentation/ui/screens/product_list_screen.dart';
import 'package:e_shop1/presentation/ui/utility/image_path.dart';
import 'package:e_shop1/presentation/ui/widgets/home/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_controler/main_bottom_nav_controller.dart';
import '../widgets/home/product_card_items.dart';
import '../widgets/image_carosel.dart';
import 'package:e_shop1/presentation/ui/widgets/categories_items.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              searchTextField(),
              const ImageCarouSel(),
              SectionTittle(
                tittle: 'All Categories',
                onTapSeeAll: () {
                  Get.find<MainBottomNavController>().changeIndex(1);
                },
              ),
              categoriesItems(),
              SectionTittle(
                  tittle: 'Popular',
                  onTapSeeAll: () {
                    Get.to(() => const ProductListScreen());
                  }),
              productItemsList(),
              SectionTittle(
                tittle: 'Special',
                onTapSeeAll: () {},
              ),
              productItemsList(),
              SectionTittle(tittle: 'New', onTapSeeAll: () {}),
              productItemsList(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox productItemsList() {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductCardItems();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 10,
      ),
    );
  }

  SizedBox categoriesItems() {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoriesItems(
            tittle: 'Electronics',
          );
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 10,
      ),
    );
  }

  TextFormField searchTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.grey),
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

class SectionTittle extends StatelessWidget {
  const SectionTittle({
    super.key,
    required this.tittle,
    required this.onTapSeeAll,
  });
  final String tittle;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: onTapSeeAll,
          child: const Text('See All'),
        ),
      ],
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
