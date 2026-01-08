import 'package:flutter/material.dart';

class SecandaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double borderRadius;
  final Color backgroundColor;
  final TextStyle? textStyle;

  const SecandaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.borderRadius = 10,
    this.backgroundColor = const Color(0xFF383838),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        title,
        style:
            textStyle ?? const TextStyle(color: Colors.white38, fontSize: 16),
      ),
    );
  }
}
