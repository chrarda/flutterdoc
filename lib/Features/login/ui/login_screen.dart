import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdoc/Features/login/ui/widgets/dont_have_account_text.dart';
import 'package:flutterdoc/Features/login/ui/widgets/email_and_passwod.dart';
import 'package:flutterdoc/Features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutterdoc/Features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutterdoc/core/Theming/styles.dart';
import 'package:flutterdoc/core/helpers/spacing.dart';
import 'package:flutterdoc/core/widgets/app_text_button.dart';
import 'package:flutterdoc/Features/login/logic/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back', style: TextStyles.font24BlueBold),
              verticalSpace(8),
              Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular),
              verticalSpace(36),
              Column(children: [
                const EmailAndPassword(),
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
                    onPressed: () {
                      validationThenDologin(context);
                    }),
                verticalSpace(16),
                TermsAndConditionsText(),
                verticalSpace(60),
                DontHaveAccountText(),
                const LoginBlocListener(),
              ]),
            ],
          ),
        ),
      ),
    ));
  }

  void validationThenDologin(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    if (loginCubit.formKey.currentState!.validate()) {
      loginCubit.emitLoginStates();
    }
  }
}
