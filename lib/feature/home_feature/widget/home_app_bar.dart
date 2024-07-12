import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key,required this.titleName});
  final String titleName;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.075,
        top: MediaQuery.of(context).size.height * 0.05,
        bottom: MediaQuery.of(context).size.height * 0.03,
      ),
      child: Text(titleName,style: Theme.of(context).textTheme.titleLarge,),
    );
  }
}
