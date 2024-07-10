import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kafiil_test/shared/widget/custom_form_field.dart';

typedef MyValidator = String? Function(String?)?;
class CustomNameWidget extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final MyValidator firstNameValidator;
  final MyValidator lastNameValidator;
  const CustomNameWidget({super.key,required this.firstNameController,required this.lastNameController,required this.firstNameValidator,required this.lastNameValidator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomFormField(
              paddingHorizontal: 0,
                label: 'First Name',
                controller: firstNameController,
                validator: firstNameValidator,
          ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: CustomFormField(
              paddingHorizontal: 0,
                label: 'Last Name',
                controller: lastNameController,
                validator: lastNameValidator,
            ),
          ),
        ],
      ),
    );
  }
}
/**
 * (value) {
    if (value == null || value.trim().isEmpty) {
    return 'Please enter your First Name';
    }
    return null;
    }
    (value) {
    if (value == null || value.trim().isEmpty) {
    return 'Please enter your Last Name';
    }
    return null;
    }
 */