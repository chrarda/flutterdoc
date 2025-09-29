import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdoc/Features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutterdoc/Features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutterdoc/core/Theming/styles.dart';
import 'package:flutterdoc/core/helpers/spacing.dart';
import 'package:flutterdoc/core/widgets/app_text_form_fieled.dart';
import 'package:flutterdoc/core/widgets/app_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login Screen', style: TextStyles.font24BlueBold),
            verticalSpace(8),
            Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GrayRegular),
            verticalSpace(36),
            Form(
                key: formKey,
                child: Column(children: [
                  AppTextFormFieled(hintText: 'Email'),
                  verticalSpace(18),
                  AppTextFormFieled(
                    hintText: 'Password',
                    isobscureText: isObscure,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text('Forgot Password?',
                        style: TextStyles.font13BlueRegular),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {}),
                  verticalSpace(16),
                  TermsAndConditionsText(),
                  verticalSpace(60),
                  AlreadyHaveAccountText(),
                ])),
          ],
        ),
      ),
    ));
  }
}
