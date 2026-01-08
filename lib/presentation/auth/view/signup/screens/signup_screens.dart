import 'package:flutter/material.dart';
import 'package:practice_project/background_image.dart';
import 'package:practice_project/core/constrants/app_images.dart';
import 'package:practice_project/core/resources/app_strings.dart';
import 'package:practice_project/core/resources/style_manager.dart';

import '../../widgets/email_input_feild.dart';

class SignupScreens extends StatefulWidget {
  const SignupScreens({super.key});

  @override
  State<SignupScreens> createState() => _SignupScreensState();
}

class _SignupScreensState extends State<SignupScreens> {
  final _fromKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _countryController = TextEditingController();
  // TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppImages.logo),
                  const SizedBox(height: 20),
                  Text(
                    AppStrings.signUpTitle,
                    style: getBoldStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    AppStrings.signUpSubTitle,
                    style: getRegularStyle(color: Colors.white60, fontSize: 15),
                  ),
                  // name
                  const SizedBox(height: 25),
                  textInput_title(title: AppStrings.name),
                  const SizedBox(height: 10),
                  nameTextFeild(nameController: _nameController),
                  const SizedBox(height: 25),
                  // email
                  textInput_title(title: AppStrings.emailAddress),
                  const SizedBox(height: 10),
                  emailTextFeild(emailController: _emailController),
                  const SizedBox(height: 10),
                  //phone
                  textInput_title(title: AppStrings.phone),
                  const SizedBox(height: 10),
                  phoneTextFeild(phoneController: _phoneController),
                  const SizedBox(height: 25),

                  // dob
                  textInput_title(title: AppStrings.dob),
                  const SizedBox(height: 10),
                  DOBTextFeild(dobController: _dobController),
                  const SizedBox(height: 25),
                  Text(
                    //AppStrings.country,
                    AppStrings.state,
                    // style: getRegularStyle(color: Colors.white60, fontSize: 15),
                    //style: get,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _countryController,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: getSemiBoldStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      hintText: AppStrings.countryHints,
                      hintStyle: getSemiBoldStyle(
                        color: Colors.white70,
                        fontSize: 15,
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
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        //return AppStrings.emailFeildWarning;
                      }
                      return null;
                    },
                    // autofillHints: [AutofillHints.email],
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DOBTextFeild extends StatelessWidget {
  const DOBTextFeild({super.key, required TextEditingController dobController})
    : _dobController = dobController;

  final TextEditingController _dobController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _dobController,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      style: getSemiBoldStyle(color: Colors.white70, fontSize: 16),
      decoration: InputDecoration(
        hintText: AppStrings.dobHints,
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
          //return AppStrings.emailFeildWarning;
        }
        return null;
      },
      // autofillHints: [AutofillHints.email],
    );
  }
}

class phoneTextFeild extends StatelessWidget {
  const phoneTextFeild({
    super.key,
    required TextEditingController phoneController,
  }) : _phoneController = phoneController;

  final TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _phoneController,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      style: getSemiBoldStyle(color: Colors.white70, fontSize: 16),
      decoration: InputDecoration(
        hintText: AppStrings.phoneHints,
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
          //return AppStrings.emailFeildWarning;
        }
        return null;
      },
      // autofillHints: [AutofillHints.email],
    );
  }
}

class nameTextFeild extends StatelessWidget {
  const nameTextFeild({
    super.key,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      style: getSemiBoldStyle(color: Colors.white70, fontSize: 16),
      decoration: InputDecoration(
        hintText: AppStrings.nameHints,
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
          //return AppStrings.emailFeildWarning;
        }
        return null;
      },
      // autofillHints: [AutofillHints.email],
    );
  }
}

class textInput_title extends StatelessWidget {
  const textInput_title({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: getRegularStyle(color: Colors.white60, fontSize: 15),
    );
  }
}
