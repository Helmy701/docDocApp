import 'package:docdoc/features/doctor_details/ui/widgets/select_schadule_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSchaduleListView extends StatefulWidget {
  final List<String>? times;
  const SelectSchaduleListView({
    super.key,
    this.times,
  });

  @override
  State<SelectSchaduleListView> createState() => _SelectSchaduleListViewState();
}

class _SelectSchaduleListViewState extends State<SelectSchaduleListView> {
  int timeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => setState(() {
                timeIndex = index;
              }),
              child: SelectSchaduleListViewItem(
                isActive: timeIndex == index,
                time: widget.times![index],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 5.w,
              ),
          itemCount: 4),
    );
  }
}
