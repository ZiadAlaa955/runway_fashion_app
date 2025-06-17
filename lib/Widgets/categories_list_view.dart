import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_fashion_app/Models/category_model.dart';
import 'package:runway_fashion_app/helper/app_router.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = [
      CategoryModel(
        title: 'Women',
        image: 'assets/images/categories/women.png',
      ),
      CategoryModel(
        title: 'Men',
        image: 'assets/images/categories/Men.png',
      ),
      CategoryModel(
        title: 'Kids',
        image: 'assets/images/categories/kids.png',
      ),
      CategoryModel(
        title: 'Deals',
        image: 'assets/images/categories/Deals.png',
      ),
      CategoryModel(
        title: 'Home',
        image: 'assets/images/categories/Home.png',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
          const Gap(20),
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.menCategoryRoute);
                        },
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            categories[index].image,
                          ),
                        ),
                      ),
                      const Gap(5),
                      Text(
                        categories[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.inter().fontFamily,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
