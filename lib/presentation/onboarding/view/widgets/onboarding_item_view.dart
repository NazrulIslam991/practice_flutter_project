import 'package:flutter/material.dart';
import 'package:practice_project/core/resources/style_manager.dart';

import '../../../../core/routes/routes_name.dart';

class OnboardingItemView extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final VoidCallback onNext;
  final int index;
  final int total;

  const OnboardingItemView({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.onNext,
    required this.index,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLastPage = index == total - 1;

    return Stack(
      children: [
        Positioned.fill(child: Image.asset(image, fit: BoxFit.cover)),

        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _PageIndicator(currentIndex: index, total: total),
                  const SizedBox(height: 16),

                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),

                  const SizedBox(height: 24),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      // style: ButtonStyle(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEDDF99),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (index == 2) {
                          Navigator.pushReplacementNamed(
                            context,
                            RouteName.signInScreen,
                          );
                        } else {
                          onNext();
                        }
                      },
                      child: index == 2
                          ? Text(
                              "Get Started",
                              style: getBoldStyle(color: Colors.black),
                            )
                          : Text(
                              "Next",
                              style: getBoldStyle(color: Colors.black),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int total;

  const _PageIndicator({required this.currentIndex, required this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
        (i) => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.only(right: 6),
          width: currentIndex == i ? 30 : 4,
          height: 4,
          decoration: BoxDecoration(
            color: currentIndex == i
                ? Colors.white
                : Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
