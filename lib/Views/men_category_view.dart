import 'package:flutter/material.dart';
import 'package:runway_fashion_app/Models/product_model.dart';
import 'package:runway_fashion_app/Widgets/category_filter.dart';
import 'package:runway_fashion_app/Widgets/custom_app_bar.dart';
import 'package:runway_fashion_app/Widgets/product.dart';

class MenCategoryView extends StatelessWidget {
  const MenCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = [
      ProductModel(
        image: "assets/images/stock/deep_gray_essential.png",
        title: "Deep gray essential regular",
        price: "25",
      ),
      ProductModel(
        image: "assets/images/stock/top_man_black.png",
        title: "Top man black",
        price: "20",
      ),
      ProductModel(
        image: "assets/images/stock/gray_coat.png",
        title: "Gray coat and white T-shirt",
        price: "30",
      ),
      ProductModel(
        image: "assets/images/stock/top_man_black_with_trousers.png",
        title: "Top man black with Trous..",
        price: "46",
      ),
      ProductModel(
        image: "assets/images/stock/puffer_jacket.png",
        title: "Lightweight Men's Puffer Jacket",
        price: "28",
      ),
      ProductModel(
        image: "assets/images/stock/white_tshirt.png",
        title: "white T-shirt",
        price: "46",
      ),
    ];

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Men",
        prefixIcon: "assets/images/icons/arrow-left.svg",
        suffixIcon: "assets/images/icons/cart.svg",
      ),
      body: Column(
        children: [
          const CategoryFilter(),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                childAspectRatio: 1 / 1.7,
              ),
              padding: const EdgeInsets.all(15),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Product(
                  productModel: products[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
