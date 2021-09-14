import 'package:flutter/material.dart';

class AppIconWidget extends StatelessWidget {
  final String image;
  final double imageSize;

  const AppIconWidget({
    Key? key,
    this.image = "assets/images/paltabigote.png",
    required this.imageSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: imageSize,
    );
  }
}
