import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/sign_up_view.dart';

class HaveAccountLogin extends StatelessWidget {
  const HaveAccountLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Don’t have an account ?',style: Theme.of(context).textTheme.titleSmall,),
        TextButton(onPressed: (){
          Navigator.pushNamed(context, SignUpView.routeName);
        }, child: Text('Register',style: Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: const Color(0xFF1DBF73),
        ),),)
      ],
    );
  }
}
