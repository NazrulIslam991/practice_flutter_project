import 'package:flutter/material.dart';
import 'package:practice_project/core/constrants/app_images.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            AppImages.background,
            fit: BoxFit.cover,
            height: double.maxFinite,
            width: double.maxFinite,
          ),
          child,
        ],
      ),
    );
  }
}
