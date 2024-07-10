import 'package:flutter/material.dart';

class ErrorMessageSignUp extends StatelessWidget {
  const ErrorMessageSignUp({super.key,required this.errorMessage});
  final bool errorMessage;
  @override
  Widget build(BuildContext context) {
    return errorMessage ?  Container(
      height: MediaQuery.of(context).size.height * 0.04,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFFFFF0ED),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        )
      ),
      child: const Row(
        children: [
          SizedBox(
            width: 4,
          ),
          Icon(Icons.error_outline),
          SizedBox(
            width: 10,
          ),
          Text('Fill the required fields',style: TextStyle(
            fontSize: 12,
            color: Color(0xFFF56342),
          ),),
        ],
      ),
    ) :  Container();
  }
}
