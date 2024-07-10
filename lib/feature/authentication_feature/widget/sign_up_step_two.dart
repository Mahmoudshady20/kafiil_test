import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/birth_data_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/gender_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/salary_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/skills_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/social_media_widget.dart';
import 'package:kafiil_test/shared/widget/custom_form_field.dart';

typedef MyValidator = String? Function(String?)?;
typedef OnChange = String? Function(bool?)?;


class SignUpStepTwo extends StatelessWidget {
  final TextEditingController aboutController;
  final void Function()? addPressed;
  final void Function()? minPressed;
  final void Function()? birthTap;
  final int salary;
  final String date;
  final String genderSelectedRole;
  final MyValidator aboutValidator;
  final MyValidator maleRadio;
  final MyValidator feMaleRadio;
  final OnChange faceBookOnChanged;
  final OnChange twitterOnChanged;
  final OnChange linkedOnChanged;
  final bool facebookValue;
  final bool twitterValue;
  final bool linkedValue;


  const SignUpStepTwo(
      {super.key,
      required this.salary,
      required this.genderSelectedRole,
      required this.date,
      required this.minPressed,
      required this.addPressed,
      required this.aboutController,
      required this.aboutValidator,
      required this.birthTap,
      required this.feMaleRadio,
      required this.maleRadio,
        required this.faceBookOnChanged,
        required this.linkedOnChanged,
        required this.twitterOnChanged,
        required this.facebookValue,
        required this.linkedValue,
        required this.twitterValue});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            const CircleAvatar(
              radius: 41,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/avatar_img.png'),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF1DBF73),
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(Icons.add),
            ),
          ],
        ),
        CustomFormField(
          label: 'About',
          paddingHorizontal: 0.05,
          controller: aboutController,
          validator: aboutValidator,
          lines: 3,
        ),
        SalaryWidget(
            addPressed: addPressed, minPressed: minPressed, salary: salary),
        BirthDataWidget(label: 'Birth Date', date: date, onTap: birthTap),
        GenderWidget(
          genderSelectedRole: genderSelectedRole,
          feMaleRadio: feMaleRadio,
          maleRadio: maleRadio,
        ),
        const SkillsWidget(),
        SocialMediaWidget(
          faceBookOnChanged: faceBookOnChanged,
          facebookValue: facebookValue,
          linkedOnChanged: linkedOnChanged,
          linkedValue: linkedValue,
          twitterOnChanged: twitterOnChanged,
          twitterValue: twitterValue,
        ),
      ],
    );
  }
}
