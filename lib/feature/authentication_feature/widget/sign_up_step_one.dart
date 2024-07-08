import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_name_widget.dart';

class SignUpStepOne extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  const SignUpStepOne({super.key,required this.firstNameController,required this.lastNameController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNameWidget(firstNameController: firstNameController, lastNameController: lastNameController)
      ],
    );
  }
}
