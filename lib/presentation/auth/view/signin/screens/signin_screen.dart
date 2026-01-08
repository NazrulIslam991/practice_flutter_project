import 'package:flutter/material.dart';
import 'package:practice_project/core/constrants/app_colors.dart';
import 'package:practice_project/core/constrants/app_images.dart';
import 'package:practice_project/core/resources/app_strings.dart';
import 'package:practice_project/core/resources/secondary_btn/secondary_btn.dart';
import 'package:practice_project/core/resources/style_manager.dart';

import '../../../../../background_image.dart';
import '../../../../../core/routes/routes_name.dart';
import '../../widgets/email_input_feild.dart';
import '../../widgets/password_input_feild.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BackgroundImage(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.logo),
                const SizedBox(height: 20),
                Text(
                  AppStrings.welcomeSignInTitle,
                  style: getBoldStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(height: 5),
                Text(
                  AppStrings.signInSubTitle,
                  style: getRegularStyle(color: Colors.white60, fontSize: 15),
                ),
                const SizedBox(height: 25),
                Text(
                  AppStrings.emailAddress,
                  style: getRegularStyle(color: Colors.white60, fontSize: 15),
                ),
                const SizedBox(height: 10),
                emailTextFeild(emailController: emailController),
                const SizedBox(height: 15),
                Text(
                  AppStrings.password,
                  style: getRegularStyle(color: Colors.white60, fontSize: 15),
                ),
                const SizedBox(height: 10),

                passwordTextFeild(passwordController: passwordController),

                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: SecandaryButton(
                    title: "Login",
                    onPressed: () => loginProgress(),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.haveAccount,
                      style: getRegularStyle(
                        color: Colors.white30,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RouteName.signUpScreen,
                        );
                      },
                      child: Text(
                        AppStrings.goRegister,
                        style: getBoldStyle(
                          color: AppColors.bgColor2,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginProgress() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("error")));
      // Navigator.pushReplacementNamed(context, RouteName.signUpScreen);
    }
  }
}
