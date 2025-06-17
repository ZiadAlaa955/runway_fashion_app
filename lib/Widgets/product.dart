import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_fashion_app/Models/product_model.dart';
import 'package:runway_fashion_app/helper/app_router.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.productDetailsRoute,
          extra: productModel,
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffECECEC),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 202,
                  left: 10,
                  child: Image.asset(
                    "assets/images/shadow.png",
                    width: 160,
                  ),
                ),
                AspectRatio(
                  aspectRatio: 1 / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      productModel.image,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          Text(
            productModel.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              fontStyle: GoogleFonts.inter().fontStyle,
            ),
          ),
          Row(
            children: [
              Text(
                "€ ${productModel.price}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  fontStyle: GoogleFonts.inter().fontStyle,
                ),
              ),
              const Spacer(),
              const Icon(Icons.favorite_border_outlined)
            ],
          ),
        ],
      ),
    );
  }
}
