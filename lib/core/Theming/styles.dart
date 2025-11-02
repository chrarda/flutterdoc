import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdoc/core/Theming/colors.dart';
import 'package:flutterdoc/core/Theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font12GrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
  );

  static TextStyle font12GrayMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.gray,
  );

  static TextStyle font12DarkBlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font15DarkBlueMedium = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font13BlueRegular = TextStyle(
      color: ColorsManager.mainBlue,
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font13GrayRegular = TextStyle(
      color: ColorsManager.gray,
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font14GrayRegular = TextStyle(
      color: ColorsManager.gray,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font14LightGrayRegular = TextStyle(
      color: ColorsManager.lightGray,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font14DarkGrayBlueMedium = TextStyle(
      color: ColorsManager.darkBlue,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font24BlueBold = TextStyle(
      color: ColorsManager.mainBlue,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font24BlackBold = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: FontWeightHelper.bold);
  static TextStyle font32BlueBold = TextStyle(
      color: ColorsManager.mainBlue,
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold);
}
