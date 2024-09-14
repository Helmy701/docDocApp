import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/doctoer_finder_logo.png',
          width: 50,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Doctor Finder",
          style: TextStyles.font24BlackBold,
        )
      ],
    );
  }
}
