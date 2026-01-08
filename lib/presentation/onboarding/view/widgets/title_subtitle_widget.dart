import 'package:flutter/material.dart';

class CustomTitleSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final CrossAxisAlignment crossAxisAlignment;

  const CustomTitleSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final isCentered = crossAxisAlignment == CrossAxisAlignment.center;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          textAlign: isCentered ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Text(
          subtitle,
          textAlign: isCentered ? TextAlign.center : TextAlign.start,
          style: TextStyle(fontSize: 20, color: Colors.white70),
        ),
      ],
    );
  }
}
