import 'package:flutter/material.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/style_manager.dart';

class emailTextFeild extends StatelessWidget {
  const emailTextFeild({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      style: getSemiBoldStyle(color: Colors.white70, fontSize: 16),
      decoration: InputDecoration(
        hintText: AppStrings.emailhints,
        hintStyle: getSemiBoldStyle(color: Colors.white70, fontSize: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.amberAccent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppStrings.emailFeildWarning;
        }
        return null;
      },
      autofillHints: [AutofillHints.email],
    );
  }
}
