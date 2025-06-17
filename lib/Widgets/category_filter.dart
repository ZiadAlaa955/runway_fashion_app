import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text(
              'Sort by',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontStyle: GoogleFonts.inter().fontStyle,
              ),
            ),
            const Gap(10),
            SvgPicture.asset("assets/images/icons/sort.svg"),
            const Spacer(),
            SvgPicture.asset("assets/images/icons/filter.svg"),
            const Gap(10),
            Text(
              'Filter',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontStyle: GoogleFonts.inter().fontStyle,
              ),
            ),
            const Gap(15),
            SvgPicture.asset("assets/images/icons/grid.svg"),
            const Gap(15),
            SvgPicture.asset("assets/images/icons/users-group.svg"),
          ],
        ),
      ),
    );
  }
}
