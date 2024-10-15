import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/doctor_details/ui/widgets/select_schadule_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSchadule extends StatelessWidget {
  final List<String>? times;
  const SelectSchadule({
    super.key,
    required this.times,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
          color: ColorsTheme.liteGreen,
          borderRadius: BorderRadius.circular(18.r)),
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Afternoon schedule',
              style: TextStyles.font15DarkBlueMedium,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 7.h),
              child: SelectSchaduleListView(
                times: times,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
