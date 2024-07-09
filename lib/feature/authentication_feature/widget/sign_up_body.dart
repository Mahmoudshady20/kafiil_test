import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_appbar_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_auth_button.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/sign_up_step_one.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/sign_up_step_two.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  int _index = 0;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbarWidget(titleName: 'Register'),
            Container(
              height: 20,
              color: Colors.red,
            ),
            Expanded(
              child: Theme(
                data: ThemeData(
                  canvasColor: Colors.transparent,
                  // Background color for the stepper
                ),
                child: Stepper(
                  elevation: 0,
                  controlsBuilder: (context, details) {
                    if(_index < 1){
                      return Row(
                        children: [
                          const Spacer(),
                          CustomAuthButton(buttonLabel: 'Next', onPressed: (){
                            setState(() {
                              _index+=1;
                            });
                          },width: 0.4,),
                        ],
                      );
                    } else {
                      Row(
                        children: [
                          const Spacer(),
                          CustomAuthButton(buttonLabel: 'Continue', onPressed: (){

                          },width: 0.4,),
                        ],
                      );
                    }
                    return Container();
                  },
                  physics: const AlwaysScrollableScrollPhysics(),
                  type: StepperType.horizontal,
                  connectorColor: WidgetStateProperty.all(const Color(0xFF1DBF73),),
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
                      label: const Text('Step 1 title'),
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
                      label: const Text('Step 1 title'),
                      stepStyle: StepStyle(
                        color:
                            _index == 1 ? const Color(0xFF1DBF73) : Colors.grey,
                      ),
                      content: const SignUpStepTwo(),
                      state:
                          _index > 1 ? StepState.complete : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
