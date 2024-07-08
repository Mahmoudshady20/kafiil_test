import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_appbar_widget.dart';
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
              child: Stepper(
                connectorColor: WidgetStateProperty.all(
                  const Color(0xFF1DBF73),

                ),

                physics: const AlwaysScrollableScrollPhysics(),
                type: StepperType.horizontal,
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
                steps: [
                  Step(
                    title: const Text('Step 1 title'),
                    isActive: _index >= 0,
                    content: SignUpStepOne(
                      firstNameController: firstNameController,
                      lastNameController: lastNameController,
                      emailController: emailController,
                      passwordController: passwordController,
                      confirmPasswordController: confirmPasswordController,
                    ),
                    state: _index > 0 ? StepState.complete : StepState.indexed,
                  ),
                  Step(
                    isActive: _index >= 1,
                    title: const Text('Step 2 title'),
                    content: const SignUpStepTwo(),
                    state: _index > 1 ? StepState.complete : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
