import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              'Hi, Ahmed',
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
          radius: 23.r,
          backgroundColor: ColorsTheme.mainGreen,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 22.r,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout_rounded,
                size: 28.r,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
