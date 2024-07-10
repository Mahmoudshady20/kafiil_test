import 'package:flutter/material.dart';

class BirthDataWidget extends StatelessWidget {
  const BirthDataWidget(
      {super.key,
      required this.label,
      required this.date,
      required this.onTap});
  final String label;
  final String date;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        label,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      const SizedBox(
        height: 7,
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.087,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            const Spacer(),
            Text(
              date,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Spacer(),
            InkWell(onTap: onTap, child: const Icon(Icons.calendar_month)),
          ],
        ),
      ),
    ]);
  }
}
