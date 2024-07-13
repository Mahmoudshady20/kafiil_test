import 'package:flutter/material.dart';
typedef MyRadio = String? Function(String?)?;
class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({super.key,required this.typeSelectedRole,required this.sellerRadio,required this.bothRadio,required this.buyerRadio,});

  final String typeSelectedRole;
  final MyRadio sellerRadio;
  final MyRadio buyerRadio;
  final MyRadio bothRadio;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 7,
        ),
        Text(
          'User Type',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Radio(
              activeColor: const Color(0xFF1DBF73),
              value: 'Seller',
              groupValue: typeSelectedRole,

              onChanged: sellerRadio,
            ),
            Text('Seller',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Colors.black
            ),),
            Radio(
              activeColor: const Color(0xFF1DBF73),
              value: 'Buyer',
              groupValue: typeSelectedRole,
              // onChanged: (value) {
              //     typeSelectedRole = value!;
              // },
              onChanged: buyerRadio,
            ),
            Text('Buyer',style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Colors.black
            ),),
            Radio(
              activeColor: const Color(0xFF1DBF73),
              value: 'Both',
              groupValue: typeSelectedRole,
              onChanged: bothRadio,
            ),
            Text('Both',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Colors.black
            ),
            ),
            const Spacer()
          ],
        ),
      ],
    );
  }
}