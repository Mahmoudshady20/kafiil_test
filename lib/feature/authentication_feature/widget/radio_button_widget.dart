import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  String _selectedRole = 'Seller';

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Radio(
          activeColor: const Color(0xFF1DBF73),
          value: 'Seller',
          groupValue: _selectedRole,
          onChanged: (value) {
            setState(() {
              _selectedRole = value!;
            });
          },
        ),
        Text('Seller',style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.black
        ),),
        Radio(
          activeColor: const Color(0xFF1DBF73),
          value: 'Buyer',
          groupValue: _selectedRole,
          onChanged: (value) {
            setState(() {
              _selectedRole = value!;
            });
          },
        ),
        Text('Buyer',style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Colors.black
        ),),
        Radio(
          activeColor: const Color(0xFF1DBF73),
          value: 'Both',
          groupValue: _selectedRole,
          onChanged: (value) {
            setState(() {
              _selectedRole = value!;
            });
          },
        ),
        Text('Both',style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.black
        ),
        ),
        const Spacer()
      ],
    );
  }
}