import 'package:flutter/material.dart';
import 'package:kafiil_test/core/utils/validations_regex.dart';
import 'package:kafiil_test/shared/widget/custom_form_field.dart';

class CustomEmailAddress extends StatelessWidget {
  const CustomEmailAddress({super.key, required this.emailController,required this.paddingHorizontal});
  final TextEditingController emailController;
  final double paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
        label: 'Email Address',
        paddingHorizontal:  MediaQuery.of(context).size.width * paddingHorizontal,
        controller: emailController,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Please enter your Email';
          }
          if (!ValidationRegex.emailRegex(value)) {
            return 'Please enter Valid Email';
          }
          return null;
        });
  }
}
