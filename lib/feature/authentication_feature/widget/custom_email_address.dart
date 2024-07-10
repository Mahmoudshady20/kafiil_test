import 'package:flutter/material.dart';
import 'package:kafiil_test/shared/widget/custom_form_field.dart';

typedef MyValidator = String? Function(String?)?;
class CustomEmailAddress extends StatelessWidget {
  const CustomEmailAddress({super.key, required this.emailController,required this.paddingHorizontal,required this.emailValidator});
  final TextEditingController emailController;
  final double paddingHorizontal;
  final MyValidator emailValidator;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
        label: 'Email Address',
        paddingHorizontal:  MediaQuery.of(context).size.width * paddingHorizontal,
        controller: emailController,
        validator: emailValidator,
         );
  }
}
/**
 *   (value) {
    if (value == null || value.trim().isEmpty) {
    return 'Please enter your Email';
    }
    if (!ValidationRegex.emailRegex(value)) {
    return 'Please enter Valid Email';
    }
    return null;
    }
 */