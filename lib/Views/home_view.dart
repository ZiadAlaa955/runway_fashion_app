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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeVideo(),
          Gap(10),
          CategoriesListView(),
        ],
      ),
      bottomNavigationBar: HomeBottomNavigationBar(),
    );
  }
}
