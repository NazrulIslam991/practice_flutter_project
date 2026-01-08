import 'package:flutter/material.dart';
import 'package:practice_project/core/constrants/app_images.dart';
import 'package:practice_project/presentation/onboarding/view/widgets/onboarding_item_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> pages = [
    {
      "title": "Welcome to Our Faith Connects",
      "description":
          "Discover the best events near you and meet new people like you! Our Faith Connects is a 35+  community built to grow in Christian relationships, networking, and businesses through social gatherings.",
      "image": AppImages.onboardingImage1,
    },
    {
      "title": "Experience the Ultimate Event",
      "description":
          "Our community events were curated specifically for mature adult minded men and women of God to unwind and enjoy. God is the center.",
      "image": AppImages.onboardingImage2,
    },
    {
      "title": "Enjoy your Favorite Event with New People",
      "description":
          "Meet new people and make meaningful connections at our exclusive events and in our app. Our key desire is to build the Kingdom of God by expanding the community.",
      "image": AppImages.onboardingImage3,
    },
  ];

  void _nextPage() {
    if (_currentIndex == pages.length - 1) {
      //Navigator.pushReplacementNamed(context, RoutesName.onboardingScreen);
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: pages.length,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        itemBuilder: (_, i) {
          final item = pages[i];
          return OnboardingItemView(
            title: item["title"]!,
            description: item["description"]!,
            image: item["image"]!,
            onNext: _nextPage,
            index: _currentIndex,
            total: pages.length,
          );
        },
      ),
    );
  }
}
