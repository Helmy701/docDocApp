import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int selectedIndex;
  final int index;
  const SpecialityListViewItem(
      {super.key,
      required this.index,
      this.specializationsData,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          index == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsTheme.darkBlue,
                      ),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: ColorsTheme.whiteGreen,
                    child: SvgPicture.asset(
                      'assets/svgs/general_speciality.svg',
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28.r,
                  backgroundColor: ColorsTheme.whiteGreen,
                  child: SvgPicture.asset(
                    'assets/svgs/general_speciality.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            specializationsData?.name ?? "Specialization",
            style: index == selectedIndex
                ? TextStyles.font14DarkBlueBold
                : TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
