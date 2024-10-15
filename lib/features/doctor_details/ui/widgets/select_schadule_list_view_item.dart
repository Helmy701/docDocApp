import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSchaduleListViewItem extends StatelessWidget {
  final bool isActive;
  final String time;
  const SelectSchaduleListViewItem(
      {super.key, required this.isActive, required this.time});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: isActive ? ColorsTheme.mainGreen : Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      duration: const Duration(milliseconds: 300),
      child: Text(
        time,
        style: isActive
            ? TextStyles.font13WhiteRegular
            : TextStyles.font13DarkBlueRegular,
      ),
    );
  }
}
