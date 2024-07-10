import 'package:flutter/material.dart';

typedef OnChange = String? Function(bool?)?;

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget(
      {super.key,
      required this.faceBookOnChanged,
      required this.linkedOnChanged,
      required this.twitterOnChanged,
      required this.facebookValue,
      required this.linkedValue,
      required this.twitterValue});
  final OnChange faceBookOnChanged;
  final OnChange twitterOnChanged;
  final OnChange linkedOnChanged;
  final bool facebookValue;
  final bool twitterValue;
  final bool linkedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Favourite Social Media',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Checkbox(value: facebookValue, onChanged: faceBookOnChanged,activeColor: const Color(0xFF1DBF73),),
            Image.asset(
              'assets/images/facebook_img.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'FaceBook',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(value: twitterValue, onChanged: twitterOnChanged,activeColor: const Color(0xFF1DBF73),),
            Image.asset(
              'assets/images/twitter_img.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Twitter',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(value: linkedValue, onChanged: linkedOnChanged,activeColor: const Color(0xFF1DBF73),),
            Image.asset(
              'assets/images/linked_img.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'LinkedIn',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ],
    );
  }
}
