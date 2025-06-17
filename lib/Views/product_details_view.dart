import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:runway_fashion_app/Models/product_model.dart';
import 'package:runway_fashion_app/Widgets/category_filter.dart';
import 'package:runway_fashion_app/Widgets/custom_app_bar.dart';
import 'package:runway_fashion_app/Widgets/image_stack.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalSheet();
    });
    super.initState();
  }

  void showModalSheet() {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.18,
          minChildSize: 0.18,
          maxChildSize: 0.6,
          expand: false,
          builder: (context, ScrollController scrollController) {
            return Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              width: double.infinity,
              child: ListView(
                controller: scrollController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 155),
                    child: Container(
                      width: 10,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                  const Gap(10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.productModel.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontStyle: GoogleFonts.inter().fontStyle,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Text(
                        "€${widget.productModel.price}",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontStyle: GoogleFonts.inter().fontStyle,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.favorite_border_outlined),
                      const Gap(5),
                      Text(
                        "250",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontStyle: GoogleFonts.inter().fontStyle,
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Select colour',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontStyle: GoogleFonts.inter().fontStyle,
                              ),
                            ),
                            const Gap(10),
                            SvgPicture.asset("assets/images/icons/sort.svg"),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 28,
                          color: Colors.black26,
                        ),
                        Row(
                          children: [
                            Text(
                              'Select size',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontStyle: GoogleFonts.inter().fontStyle,
                              ),
                            ),
                            const Gap(10),
                            SvgPicture.asset("assets/images/icons/sort.svg"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Center(
                        child: Text(
                          "Add To Bag",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontStyle: GoogleFonts.inter().fontStyle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Men",
        prefixIcon: "assets/images/icons/arrow-left.svg",
        suffixIcon: "assets/images/icons/cart.svg",
      ),
      body: Column(
        children: [
          const CategoryFilter(),
          ImageStack(image: widget.productModel.image),
        ],
      ),
    );
  }
}
