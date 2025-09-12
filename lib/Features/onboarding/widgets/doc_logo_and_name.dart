import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterdoc/core/Theming/styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg',
            width: 50.w, height: 50.h, fit: BoxFit.fill),
        SizedBox(
          width: 10.w,
        ),
        Text('DocDoc', style: TextStyles.font24Black700Weight)
      ],
    );
  }
}
