import 'package:flutter/material.dart';

typedef MyChanged = void Function(bool?)?;

class RememberForgetRow extends StatelessWidget {
  const RememberForgetRow(
      {super.key, required this.value, required this.onChanged});
  final bool value;
  final MyChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03,
        ),
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: onChanged,
              checkColor: Colors.white,
              activeColor: const Color(0xFF1DBF73),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
                bottomRight: Radius.circular(6),
                bottomLeft: Radius.circular(6),
              )),
            ),
            Text(
              'Remember Me',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                  style: Theme.of(context).textTheme.titleSmall,
                ))
          ],
        ),
      ),
    );
  }
}
