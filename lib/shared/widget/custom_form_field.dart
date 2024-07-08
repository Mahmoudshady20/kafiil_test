// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

typedef MyValidator = String? Function(String?)?;

class CustomFormField extends StatelessWidget {
  final String label;
  final String? hint;
  final IconButton? suffix;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType textInputType;
  final int lines;
  final MyValidator validator;
  final double paddingHorizontal;
  final bool? isLogin;
  const CustomFormField(
      {super.key,required this.label,
        this.hint,
        this.isLogin = false,
        required this.paddingHorizontal,
        this.isPassword = false,
        required this.controller,
        this.suffix,
        this.textInputType = TextInputType.text,
        this.lines = 1,
        required this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,style: Theme.of(context).textTheme.titleSmall,),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          TextFormField(
            /**
             * if You tapped outside , then close the Keyboard .
             */
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus!.unfocus();
            },
            obscureText: isPassword,
            controller: controller,
            keyboardType: textInputType,
            minLines: lines,
            maxLines: lines,
            validator: validator,
            decoration: InputDecoration(
              fillColor: Color(0xFFF9F9F9),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none
              ),
              suffixIcon: suffix,
            ),
          ),
        ],
      ),
    );
  }
}