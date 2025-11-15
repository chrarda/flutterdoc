import 'package:flutter/material.dart';
import 'package:flutterdoc/core/Theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'By logging in, you agree to our ',
              style: TextStyles.font13GrayRegular),
          TextSpan(
              text: 'Terms & Conditions ',
              style: TextStyles.font13DarkBlueMedium),
          TextSpan(
              text: 'And ',
              style: TextStyles.font13GrayRegular.copyWith(height: 1.5)),
          TextSpan(
              text: 'Privacy Policy', style: TextStyles.font13DarkBlueMedium),
        ]));
  }
}
