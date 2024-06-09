import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Omar',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How are you Today?',
              style: TextStyles.font12GreyRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: ColorsTheme.darkerOffwhite,
          child: SvgPicture.asset("assets/svgs/notification_button.svg"),
        ),
      ],
    );
  }
}
