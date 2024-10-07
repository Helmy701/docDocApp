import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsShimmersLoading extends StatelessWidget {
  const DoctorsShimmersLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                Shimmer.fromColors(
                  baseColor: ColorsTheme.liteGreen,
                  highlightColor: Colors.white,
                  child: CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Shimmer.fromColors(
                        baseColor: ColorsTheme.lightGrey,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 18.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              color: ColorsTheme.liteGreen,
                              borderRadius: BorderRadius.circular(12.r)),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Shimmer.fromColors(
                          baseColor: ColorsTheme.lightGrey,
                          highlightColor: Colors.white,
                          child: Container(
                            height: 14.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                                color: ColorsTheme.lightGrey,
                                borderRadius: BorderRadius.circular(12.r)),
                          )),
                      SizedBox(
                        height: 12.h,
                      ),
                      Shimmer.fromColors(
                        baseColor: ColorsTheme.lightGrey,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 14.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: ColorsTheme.lightGrey,
                              borderRadius: BorderRadius.circular(12.r)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
