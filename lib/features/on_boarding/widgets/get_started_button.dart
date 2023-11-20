import 'package:flutter/material.dart';
import 'package:medical_app/core/helpers/extentions.dart';
import 'package:medical_app/core/routing/routes.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/core/theming/text_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
          backgroundColor: MaterialStatePropertyAll(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStatePropertyAll(Size(double.infinity, 52))),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text("Get Started", style: TextStyles.font16WhitSemiBold),
    );
  }
}
