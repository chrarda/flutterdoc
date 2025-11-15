import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdoc/Features/login/ui/widgets/pasword_validations.dart';
import 'package:flutterdoc/Features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutterdoc/core/helpers/app_regex.dart';
import 'package:flutterdoc/core/helpers/spacing.dart';
import 'package:flutterdoc/core/widgets/app_text_form_fieled.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscured = true;
  bool isConfirmPasswordObscured = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialChar = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      final password = passwordController.text;
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(password);
        hasUpperCase = AppRegex.hasUpperCase(password);
        hasSpecialChar = AppRegex.hasSpecialCharacter(password);
        hasNumber = AppRegex.hasNumber(password);
        hasMinLength = AppRegex.hasMinLength(password);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormFieled(
            hintText: 'name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
            controller: context.read<SignUpCubit>().nameController,
          ),
          verticalSpace(18),
          AppTextFormFieled(
            hintText: 'phone number',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            controller: context.read<SignUpCubit>().phoneController,
          ),
          verticalSpace(18),
          AppTextFormFieled(
            hintText: 'email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignUpCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormFieled(
            controller: context.read<SignUpCubit>().passwordController,
            hintText: 'password',
            isobscureText: isPasswordObscured,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscured = !isPasswordObscured;
                });
              },
              child: Icon(
                isPasswordObscured ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormFieled(
            controller: context.read<SignUpCubit>().confirmPasswordController,
            hintText: 'confirm password',
            isobscureText: isConfirmPasswordObscured,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfirmPasswordObscured = !isConfirmPasswordObscured;
                });
              },
              child: Icon(
                isConfirmPasswordObscured
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value != passwordController.text) {
                return 'Passwords do not match';
              }
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowercase: hasLowerCase,
            hasUppercase: hasUpperCase,
            hasSpecialCharacters: hasSpecialChar,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
