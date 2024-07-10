import 'package:flutter/material.dart';
typedef MyRadio = String? Function(String?)?;
class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key, required this.genderSelectedRole,required this.maleRadio,required this.feMaleRadio});
  final String genderSelectedRole;
  final MyRadio maleRadio;
  final MyRadio feMaleRadio;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Gender',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Radio(
              activeColor: const Color(0xFF1DBF73),
              value: 'male',
              groupValue: genderSelectedRole,
              onChanged: maleRadio,
            ),
            Text(
              'Male',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.black),
            ),
            Radio(
              activeColor: const Color(0xFF1DBF73),
              value: 'female',
              groupValue: genderSelectedRole,
              onChanged: feMaleRadio,
            ),
            Text(
              'Female',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.black),
            ),
            const Spacer()
          ],
        ),
      ],
    );
  }
}
