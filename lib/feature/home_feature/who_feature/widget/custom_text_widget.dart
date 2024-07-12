import 'package:flutter/material.dart';

class WhoTextWidget extends StatelessWidget {
  const WhoTextWidget({super.key,required this.email,required this.title,required this.maxLines});
  final String email;
  final String title;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
              height: maxLines ==1 ? MediaQuery.of(context).size.height * 0.06 :  MediaQuery.of(context).size.height * 0.14,
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: 8,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text(
                  email,
                  maxLines: 3,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
