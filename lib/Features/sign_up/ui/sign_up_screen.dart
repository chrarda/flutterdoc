import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdoc/Features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutterdoc/Features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutterdoc/Features/sign_up/ui/widgets/already_have_account_text.dart';
import 'package:flutterdoc/Features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:flutterdoc/Features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutterdoc/core/Theming/styles.dart';
import 'package:flutterdoc/core/helpers/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdoc/core/widgets/app_text_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create an Account', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                    'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                    style: TextStyles.font14GrayRegular),
                verticalSpace(36),
                Column(children: [
                  const SignupForm(),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Create Account',
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      validateThenDoSignup(context);
                    },
                  ),
                  verticalSpace(16),
                  const TermsAndConditionsText(),
                  verticalSpace(30),
                  const AlreadyHaveAccountText(),
                  const SignUpBlocListener(),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    final signUpCubit = context.read<SignUpCubit>();
    if (signUpCubit.formKey.currentState!.validate()) {
      signUpCubit.emitSignUpStates();
    }
  }
}
