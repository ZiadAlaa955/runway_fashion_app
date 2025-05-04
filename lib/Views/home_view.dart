import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway_fashion_app/Widgets/categories_list_view.dart';
import 'package:runway_fashion_app/Widgets/custom_app_bar.dart';
import 'package:runway_fashion_app/Widgets/home_video.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Runway',
        prefixIcon: 'assets/images/icons/menu.svg',
        suffixIcon: 'assets/images/icons/notification.svg',
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeVideo(),
          Gap(10),
          CategoriesListView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
