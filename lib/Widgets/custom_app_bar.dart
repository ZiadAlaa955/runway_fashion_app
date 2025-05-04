import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.prefixIcon,
    required this.suffixIcon,
  });

  final String title, prefixIcon, suffixIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            prefixIcon,
            height: 24,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w900,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
          SvgPicture.asset(
            suffixIcon,
            height: 24,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
