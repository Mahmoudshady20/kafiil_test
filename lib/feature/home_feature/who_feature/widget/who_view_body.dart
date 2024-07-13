import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/data/user_provider.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/radio_button_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/skills_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/social_media_widget.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/widget/birth_widget.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/widget/custom_text_widget.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/widget/name_widget.dart';
import 'package:kafiil_test/feature/home_feature/who_feature/widget/who_password_widget.dart';
import 'package:kafiil_test/feature/home_feature/widget/home_app_bar.dart';
import 'package:provider/provider.dart';

class WhoViewBody extends StatefulWidget {
  const WhoViewBody({super.key});

  @override
  State<WhoViewBody> createState() => _WhoViewBodyState();
}

class _WhoViewBodyState extends State<WhoViewBody> {
  late TextEditingController passwordController;
  late bool hidePassword;
  @override
  void initState() {
    passwordController = TextEditingController();
    hidePassword = true;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
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
          WhoNameWidget(
            lastName: userProvider.userModel?.lastName ?? 'Mahmoud',
            firstName: userProvider.userModel?.firstName ?? 'Mohamed',
          ),
          WhoTextWidget(
            email:
                userProvider.userModel?.emailAddress ?? 'mahmoud47@gmail.com',
            title: 'Email Address',
            maxLines: 1,
          ),
          WhoPasswordWidget(
            password: userProvider.userModel?.password ?? 'mahmoud12345',
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
              typeSelectedRole:
                  userProvider.userModel?.typeSelectedRole ?? 'Seller',
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
          WhoTextWidget(
              maxLines: 5,
              email: userProvider.userModel?.about ??
                  'Lorem ipsum dolor sit amet consectetur. Odio urna sed velit et sed quis. Enim ut sed. sed quis. Enim ut sed.',
              title: 'About'),
          WhoTextWidget(
            email: userProvider.userModel?.salary.toString() ?? '1200',
            title: 'Salary',
            maxLines: 1,
          ),
          const BirthDayWidget(),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.04,
            ),
            child: const SkillsWidget(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.04,
            ),
            child: SocialMediaWidget(
                faceBookOnChanged: (value) {
                  return null;
                },
                linkedOnChanged: (value) {
                  return null;
                },
                twitterOnChanged: (value) {
                  return null;
                },
                facebookValue: userProvider.userModel?.faceBook ?? true,
                linkedValue: userProvider.userModel?.linked ?? true,
                twitterValue: userProvider.userModel?.twitter ?? true),
          ),
        ],
      ),
    );
  }
}
