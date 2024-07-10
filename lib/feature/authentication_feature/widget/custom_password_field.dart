import 'package:flutter/material.dart';
import 'package:kafiil_test/shared/widget/custom_form_field.dart';

typedef MyValidator = String? Function(String?)?;
class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key,required this.passwordController,required this.label,required this.padding,required this.passwordValidator,});
  final TextEditingController passwordController;
  final String label;
  final double padding;
  final MyValidator passwordValidator;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  late bool hidePassword;
   @override
  void initState() {
     hidePassword = true;
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  CustomFormField(
      label: widget.label,
      paddingHorizontal:  MediaQuery.of(context).size.width * widget.padding,
      controller: widget.passwordController,
      validator: widget.passwordValidator,
      isPassword: hidePassword,
      suffix:IconButton(
        onPressed: (){
          if(hidePassword == false){
            hidePassword = true;
          }
          else {
            hidePassword = false;
          }
          setState(() {

          });
        },
        icon: hidePassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
      ),
    );
  }
}
/**
 * (value){
    if (value == null || value.trim().isEmpty) {
    return 'Please enter your Password';
    }
    if (!ValidationRegex.passwordRegex(value)){
    return 'Please enter valid Password';
    }
    return null;
    }
 */
