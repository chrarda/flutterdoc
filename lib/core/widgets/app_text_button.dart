import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Theming/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      // ✅ empêche l'écrasement dans un ScrollView
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: buttonHeight ?? 50.h,
      ),
      child: IntrinsicHeight(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              backgroundColor ?? ColorsManager.mainBlue,
            ),
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
              ),
            ),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                horizontal: horizontalPadding?.w ?? 12.w,
                vertical: verticalPadding?.h ?? 14.h,
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
