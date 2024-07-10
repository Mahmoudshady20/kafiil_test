import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: 4,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF9F9F9),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Wrap(
            spacing: 8,
            children: [
              Chip(
                label: Text('Video Production',style: Theme.of(context).textTheme.bodySmall,),
                onDeleted: () {},
                backgroundColor: const Color(0xFFE9F9F1),
                side: BorderSide.none,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              ),
              Chip(
                label: Text('Video Production',style: Theme.of(context).textTheme.bodySmall,),
                onDeleted: () {},
                backgroundColor: const Color(0xFFE9F9F1),
                side: BorderSide.none,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
