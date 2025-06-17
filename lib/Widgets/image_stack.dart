import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffECECEC),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 430,
            child: Image.asset(
              "assets/images/shadow.png",
              width: 350,
            ),
          ),
          Image.asset(
            image,
            height: 490,
            width: 400,
          ),
        ],
      ),
    );
  }
}
