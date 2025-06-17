import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway_fashion_app/Widgets/categories_list_view.dart';
import 'package:runway_fashion_app/Widgets/custom_app_bar.dart';
import 'package:runway_fashion_app/Widgets/home_bottom_navigation_bar.dart';
import 'package:runway_fashion_app/Widgets/home_video.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Runway',
        prefixIcon: 'assets/images/icons/menu.svg',
        suffixIcon: 'assets/images/icons/notification.svg',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeVideo(),
          // Spacer(),
          CategoriesListView(),
          Gap(20),
        ],
      ),
      bottomNavigationBar: HomeBottomNavigationBar(),
    );
  }
}
