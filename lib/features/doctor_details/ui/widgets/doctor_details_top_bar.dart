import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsTopBar extends StatelessWidget {
  const DoctorDetailsTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 23.r,
            backgroundColor: ColorsTheme.mainGreen,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22.r,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 28.r,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 55.w,
          ),
          Text(
            'Doctor Profile',
            style: TextStyles.font22DarkBlueBold,
          )
        ],
      ),
    );
  }
}
