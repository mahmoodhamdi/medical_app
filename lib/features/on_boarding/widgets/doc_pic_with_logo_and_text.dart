// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/theming/text_styles.dart';

class DocPicWithLogoAndText extends StatelessWidget {
  const DocPicWithLogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 5,
          top: 20,
          child: SvgPicture.asset(
            "assets/svgs/big_logo.svg",
            height: 380.spMax,
            color: const Color(0xfff4f8ff),
          ),
        ),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.25, 0.44])),
            child: Image.asset(
              "assets/images/doctor_pic.png",
              height: 480.spMax,
            )),
        Positioned(
          bottom: 60,
          right: 0,
          left: 0,
          child: Text(
            textAlign: TextAlign.center,
            "Best Doctor\nAppointment App",
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
