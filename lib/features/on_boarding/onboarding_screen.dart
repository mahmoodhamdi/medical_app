import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/theming/text_styles.dart';
import 'package:medical_app/features/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:medical_app/features/on_boarding/widgets/doc_pic_with_logo_and_text.dart';
import 'package:medical_app/features/on_boarding/widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(
              height: 30.h,
            ),
            const DocPicWithLogoAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Manage and schedule all of your medical appointments easily\nwith Docdoc to get a new experience.",
                    style: TextStyles.font13Gray400Weight,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const GetStartedButton(),
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
