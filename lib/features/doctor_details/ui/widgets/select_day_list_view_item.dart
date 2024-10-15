import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectDayListViewItem extends StatelessWidget {
  final bool isActive;
  final int today;
  const SelectDayListViewItem(
      {super.key, required this.isActive, required this.today});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 55.w,
      height: 55.h,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          color: isActive ? ColorsTheme.mainGreen : ColorsTheme.liteGreen),
      child: Center(
        child: Text(
          '$today',
          style: isActive
              ? TextStyles.font20WhiteSemiBold
              : TextStyles.font20GreenSemiBold,
        ),
      ),
    );
  }
}
