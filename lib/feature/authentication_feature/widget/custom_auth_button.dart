import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton(
      {super.key, required this.buttonLabel, required this.onPressed,required this.width});
  final String buttonLabel;
  final void Function()? onPressed;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 12,
        top: 12,
        right: 12,
      ),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
          color: const Color(0xFF1DBF73),
          borderRadius: BorderRadius.circular(16)),
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
