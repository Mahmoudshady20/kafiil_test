import 'package:flutter/material.dart';

class WhoPasswordWidget extends StatelessWidget {
  const WhoPasswordWidget({super.key, required this.password,required this.hidePassword,required this.onTap});
  final String password;
  final bool hidePassword;
  final void Function()? onTap;

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
            'Password',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Text(
                  hidePassword ? password.split('').map((_) => '.').join('') :password,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                      ),
                ),
                const Spacer(),
                InkWell(
                    onTap: onTap,
                    child: Icon( hidePassword ?  Icons.visibility : Icons.visibility_off,),),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
