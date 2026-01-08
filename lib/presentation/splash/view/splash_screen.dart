import 'package:flutter/material.dart';
import 'package:practice_project/core/constrants/app_images.dart';

import '../../../background_image.dart';
import '../../../core/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToOnBoarding();
  }

  Future<void> goToOnBoarding() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, RouteName.onboardingScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: BackgroundImage(
        child: Center(
          child: SizedBox(
            height: 450,
            width: 450,
            child: Image.asset(AppImages.logo),
          ),
        ),
      ),
    );
  }
}
