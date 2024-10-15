import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/doctor_details/ui/widgets/select_schadule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseTime extends StatefulWidget {
  const ChooseTime({super.key});

  @override
  State<ChooseTime> createState() => _ChooseTimeState();
}

class _ChooseTimeState extends State<ChooseTime> {
  Map<int, List<String>> schaduleMap = {
    0: ['07-08 AM', '08-09 AM', '09-10 AM', '10-11 AM'],
    1: ['11-12 AM', '12-01 PM', '01-02 PM', '02-03 PM'],
    2: ['03-04 PM', '04-05 PM', '05-06 PM', '06-07 PM'],
  };
  int periodIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          decoration: BoxDecoration(
              color: ColorsTheme.liteGreen,
              borderRadius: BorderRadius.circular(25.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              periodButton("Morning", 0),
              periodButton("Afternoon", 1),
              periodButton("Eveninig", 2),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SelectSchadule(times: schaduleMap[periodIndex])
      ],
    );
  }

  Widget periodButton(String periodName, int index) {
    return GestureDetector(
      onTap: () => setState(() {
        periodIndex = index;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 111.w,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: periodIndex == index
              ? ColorsTheme.mainGreen
              : ColorsTheme.liteGreen,
        ),
        child: Center(
          child: Text(
            periodName,
            style: periodIndex == index
                ? TextStyles.font16WhiteSemiBold
                : TextStyles.font16GreenSemiBold,
          ),
        ),
      ),
    );
  }
}
