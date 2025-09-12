import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterdoc/core/Theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_low_opacity.svg',
        ),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4],
                  colors: [Colors.white, Colors.transparent])),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor\n Appointemnt App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            )),
      ],
    );
  }
}
