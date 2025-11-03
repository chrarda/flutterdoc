import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterdoc/core/Theming/styles.dart';
import 'package:flutterdoc/core/helpers/extentions.dart';
import 'package:flutterdoc/core/routing/routes.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Already have an Account? ",
        style: TextStyles.font13DarkBlueRegular,
        children: [
          TextSpan(
            text: " Login",
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
