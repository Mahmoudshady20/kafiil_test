import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key,required this.titleName});
  final String titleName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.09,
        top: MediaQuery.of(context).size.height * 0.09,
      ),
      child: Text(titleName,style: Theme.of(context).textTheme.titleLarge,),
    );
  }
}
