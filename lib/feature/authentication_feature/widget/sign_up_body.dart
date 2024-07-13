import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kafiil_test/core/utils/date_utils.dart';
import 'package:kafiil_test/core/utils/validations_regex.dart';
import 'package:kafiil_test/feature/authentication_feature/data/user_model.dart';
import 'package:kafiil_test/feature/authentication_feature/data/user_provider.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_appbar_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_auth_button.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/error_message.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/sign_up_step_one.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/sign_up_step_two.dart';
import 'package:kafiil_test/feature/home_feature/home_view.dart';
import 'package:provider/provider.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  int _index = 0;
  late GlobalKey<FormState> formKey;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController aboutController;
  late String typeSelectedRole;
  late String genderSelectedRole;
  late int salary;
  late String date;
  late bool facebookValue;
  late bool twitterValue;
  late bool linkedValue;
  late bool errorMessage;
  @override
  void initState() {
    date = MyDateUtils.formatTaskDate(MyDateUtils.dateOnly(DateTime.now()));
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
    confirmPasswordController = TextEditingController();
    aboutController = TextEditingController();
    typeSelectedRole = 'Seller';
    genderSelectedRole = 'male';
    salary = 1000;
    facebookValue = false;
    twitterValue = false;
    linkedValue = false;
    errorMessage = false;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    aboutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbarWidget(titleName: 'Register'),
              ErrorMessageSignUp(
                errorMessage: errorMessage,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(
                      canvasColor: Colors.transparent,
                      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
                      textTheme: TextTheme(
                        titleLarge: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                        titleSmall: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                          color: Color(0xFF696F79),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                      )
                      // Background color for the stepper
                      ),
                  child: Stepper(
                    elevation: 0,
                    controlsBuilder: (context, details) {
                      if (_index < 1) {
                        return Row(
                          children: [
                            const Spacer(),
                            CustomAuthButton(
                              buttonLabel: 'Next',
                              onPressed: () {
                                register();
                              },
                              width: 0.4,
                            ),
                          ],
                        );
                      }
                      if (_index == 1) {
                        return Row(
                          children: [
                            CustomAuthButton(
                              buttonLabel: 'Submit',
                              onPressed: () {
                                register();
                              },
                              width: 0.82,
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
                    physics: const AlwaysScrollableScrollPhysics(),
                    type: StepperType.horizontal,
                    connectorColor: WidgetStateProperty.all(
                      const Color(0xFF1DBF73),
                    ),
                    currentStep: _index,
                    onStepCancel: () {
                      if (_index > 0) {
                        setState(() {
                          _index -= 1;
                        });
                      }
                    },
                    onStepContinue: () {
                      if (_index <= 0) {
                        setState(() {
                          _index += 1;
                        });
                      }
                    },
                    onStepTapped: (int index) {
                      setState(() {
                        _index = index;
                      });
                    },
                    margin: const EdgeInsets.all(0),
                    steps: [
                      Step(
                        title: Container(),
                        label: Text(
                          'Register',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        isActive: _index >= 0,
                        stepStyle: const StepStyle(
                          color: Color(0xFF1DBF73),
                        ),
                        content: SignUpStepOne(
                          firstNameController: firstNameController,
                          lastNameController: lastNameController,
                          emailController: emailController,
                          passwordController: passwordController,
                          confirmPasswordController: confirmPasswordController,
                          typeSelectedRole: typeSelectedRole,
                          sellerRadio: (value) {
                            setState(() {
                              typeSelectedRole = value!;
                            });
                            return null;
                          },
                          bothRadio: (value) {
                            setState(() {
                              typeSelectedRole = value!;
                            });
                            return null;
                          },
                          buyerRadio: (value) {
                            setState(() {
                              typeSelectedRole = value!;
                            });
                            return null;
                          },
                          emailNameValidator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your Email';
                            }
                            if (!ValidationRegex.emailRegex(value)) {
                              return 'Please enter Valid Email';
                            }
                            return null;
                          },
                          passwordValidator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your Password';
                            }
                            if (passwordController.text.length < 8) {
                              return 'Your password must be at least 8 characters';
                            }
                            if (!ValidationRegex.passwordRegex(value)) {
                              return 'Your password must consist of a lowercase letter, an uppercase letter, and a number';
                            }
                            return null;
                          },
                          confirmPasswordValidator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your Confirm Password';
                            }
                            if (passwordController.text !=
                                confirmPasswordController.text) {
                              return "Password Don't match";
                            }
                            return null;
                          },
                          firstNameValidator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your First Name';
                            }
                            return null;
                          },
                          lastNameValidator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your Last Name';
                            }
                            return null;
                          },
                        ),
                        state:
                            _index > 0 ? StepState.complete : StepState.indexed,
                      ),
                      Step(
                        isActive: _index >= 1,
                        title: Container(
                          height: 1,
                          width: 5,
                          color: Colors.black,
                        ),
                        label: Text(
                          'Complete Data',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: _index < 1
                                        ? const Color(0xFF696F79)
                                        : const Color(0xFF1DBF73),
                                  ),
                        ),
                        stepStyle: StepStyle(
                          color: _index == 1
                              ? const Color(0xFF1DBF73)
                              : Colors.grey,
                        ),
                        content: SignUpStepTwo(
                          birthTap: () {},
                          salary: salary,
                          aboutController: aboutController,
                          aboutValidator: (value) {
                            return null;
                          },
                          date: date,
                          genderSelectedRole: genderSelectedRole,
                          addPressed: () {
                            setState(() {
                              salary += 1;
                            });
                          },
                          minPressed: () {
                            salary -= 1;
                          },
                          maleRadio: (value) {
                            setState(() {
                              genderSelectedRole = 'male';
                            });
                            return null;
                          },
                          feMaleRadio: (value) {
                            setState(() {
                              genderSelectedRole = 'female';
                            });
                            return null;
                          },
                          twitterValue: twitterValue,
                          twitterOnChanged: (value) {
                            setState(() {
                              twitterValue = !twitterValue;
                            });
                            return null;
                          },
                          linkedValue: linkedValue,
                          facebookValue: facebookValue,
                          faceBookOnChanged: (value) {
                            setState(() {
                              facebookValue = !facebookValue;
                            });
                            return null;
                          },
                          linkedOnChanged: (value) {
                            setState(() {
                              linkedValue = !linkedValue;
                            });
                            return null;
                          },
                        ),
                        state: _index > 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  register() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    UserModel user = UserModel(
        salary: salary,
        faceBook: facebookValue,
        linked: linkedValue,
        twitter: twitterValue,
        typeSelectedRole: typeSelectedRole,
        about: aboutController.text,
        birthDate: date,
        emailAddress: emailController.text,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        password: passwordController.text,
        userType: typeSelectedRole);
    var userProvider = Provider.of<UserProvider>(context,listen: false);
    userProvider.updateUser(user);
    setState(() {
      _index += 1;
    });
    if(_index>1){
      Navigator.pushReplacementNamed(context, HomeView.routeName);
    }
  }
}
