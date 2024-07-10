import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key,required this.titleName});
  final String titleName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.075,
        top: MediaQuery.of(context).size.height * 0.05,
        bottom: MediaQuery.of(context).size.height * 0.006,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              if(titleName=='Register'){
                Navigator.pop(context);
              }
            },
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
          Text(titleName,style: Theme.of(context).textTheme.titleLarge,),
        ],
      ),
    );
  }
}
