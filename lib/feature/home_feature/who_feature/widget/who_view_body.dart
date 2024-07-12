import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/radio_button_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/skills_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/social_media_widget.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/widget/birth_widget.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/widget/custom_text_widget.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/widget/name_widget.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/widget/who_password_widget.dart';
import 'package:kafiil_test/feature/home_feature/widget/home_app_bar.dart';

class WhoViewBody extends StatefulWidget {
  const WhoViewBody({super.key});

  @override
  State<WhoViewBody> createState() => _WhoViewBodyState();
}

class _WhoViewBodyState extends State<WhoViewBody> {
  late TextEditingController passwordController;
  late bool hidePassword;
  late String typeSelectedRole;
  @override
  void initState() {
    passwordController = TextEditingController();
    hidePassword = true;
    typeSelectedRole = 'Seller';
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppBar(titleName: 'Who Am I'),
          Center(
            child: Stack(
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
          ),
          const SizedBox(
            height: 20,
          ),
          const WhoNameWidget(
            lastName: 'lastName',
            firstName: 'firstName',
          ),
          const WhoTextWidget(
            email: 'Mahmoud@gmail.com',
            title: 'Email Address',
            maxLines: 1,
          ),
          WhoPasswordWidget(
            password: 'password',
            hidePassword: hidePassword,
            onTap: () {
              if (hidePassword == false) {
                hidePassword = true;
              } else {
                hidePassword = false;
              }
              setState(() {});
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
            ),
            child: RadioButtonWidget(
              typeSelectedRole: typeSelectedRole,
              sellerRadio: (value) {
                return null;
              },
              bothRadio: (value) {
                return null;
              },
              buyerRadio: (value) {
                return null;
              },
            ),
          ),
          const WhoTextWidget(
              maxLines: 5,
              email:
                  'Lorem ipsum dolor sit amet consectetur. Odio urna sed velit et sed quis. Enim ut sed. sed quis. Enim ut sed.',
              title: 'About'),
          const WhoTextWidget(
            email: 'SAR 4500',
            title: 'Salary',
            maxLines: 1,
          ),
         const BirthDayWidget(),
         Padding(
           padding:EdgeInsets.only(
             left: MediaQuery.of(context).size.width * 0.04,
             right: MediaQuery.of(context).size.width * 0.04,
           ),
           child: const SkillsWidget(),
         ),
          Padding(
            padding:EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.04,
            ),
            child: SocialMediaWidget(faceBookOnChanged: (value){
              return null;
            }, linkedOnChanged: (value){
              return null;
            }, twitterOnChanged: (value){
              return null;
            }, facebookValue: true, linkedValue: false, twitterValue: false),
          ),
        ],
      ),
    );
  }
}
