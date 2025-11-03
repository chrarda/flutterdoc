import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdoc/Features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutterdoc/Features/sign_up/logic/sign_up_state.dart';
import 'package:flutterdoc/core/Theming/colors.dart';
import 'package:flutterdoc/core/Theming/styles.dart';
import 'package:flutterdoc/core/helpers/extentions.dart';
import 'package:flutterdoc/core/rouTing/routes.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            // Show loading indicator
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          signupSuccess: (signupResponse) {
            // Dismiss loading indicator
            context.pop();
            showSuccessDialog(context);
          },
          signupError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Signup Successful'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Congratulations, you have signed up successfully!'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: ColorsManager.mainBlue,
              disabledBackgroundColor: Colors.grey,
              disabledForegroundColor: Colors.grey.withValues(alpha: 0.38),
            ),
            onPressed: () {
              context.pushNamed(Routes.loginScreen); // Dismiss the dialog
            },
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              context.pop(); // Dismiss the dialog
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
