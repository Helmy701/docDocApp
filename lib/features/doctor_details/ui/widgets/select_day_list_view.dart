import 'package:docdoc/features/doctor_details/ui/widgets/select_day_list_view_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SelectDayListView extends StatefulWidget {
  const SelectDayListView({super.key});

  @override
  State<SelectDayListView> createState() => _SelectDayListViewState();
}

class _SelectDayListViewState extends State<SelectDayListView> {
  int activeIndex = 0;

  int today = int.parse(DateFormat('d').format(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 10.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              print(today);
              setState(() {});
            },
            child: SelectDayListViewItem(
              today: today + index,
              isActive: activeIndex == index,
            ),
          );
        },
      ),
    );
  }
}
