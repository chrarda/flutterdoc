import 'package:flutter/material.dart';
import 'package:flutterdoc/core/Theming/colors.dart';
import 'package:flutterdoc/core/Theming/styles.dart';
import 'package:flutterdoc/core/helpers/spacing.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations(
      {super.key,
      required this.hasUppercase,
      required this.hasLowercase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least one Lowercase letter', hasLowercase),
        verticalSpace(2),
        buildValidationRow('At least one uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidationRow(
            'At least one Special character', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At least one Number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ), //TextStyles.font13DarkBlueRegular.copyWith(color: Colo  rsManager.gray)),
      ],
    );
  }
}
