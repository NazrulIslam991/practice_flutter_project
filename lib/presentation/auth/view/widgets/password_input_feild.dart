import 'package:flutter/material.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/style_manager.dart';

class passwordTextFeild extends StatefulWidget {
  const passwordTextFeild({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<passwordTextFeild> createState() => _passwordTextFeildState();
}

class _passwordTextFeildState extends State<passwordTextFeild> {
  bool _obSecure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      style: getSemiBoldStyle(color: Colors.white70, fontSize: 16),
      obscureText: _obSecure,
      decoration: InputDecoration(
        hintText: AppStrings.passwordhints,
        hintStyle: getSemiBoldStyle(color: Colors.white70, fontSize: 15),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obSecure = !_obSecure;
            });
          },
          icon: Icon(
            _obSecure
                ? Icons.remove_red_eye_outlined
                : Icons.remove_red_eye_outlined,
          ),
        ),
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
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppStrings.passwordFeildWarning;
        }
        return null;
      },
    );
  }
}
