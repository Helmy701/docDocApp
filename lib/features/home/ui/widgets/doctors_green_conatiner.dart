import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsGreenContainer extends StatelessWidget {
  const DoctorsGreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 155.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                image: AssetImage('assets/images/home_green_pattern.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Looking for\ndesired doctor?',
                  style: TextStyles.font20WhiteSemiBold,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 30.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r))),
                    child: Text(
                      'Search for',
                      style: TextStyles.font14BlackMedium,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 5.w,
            child: Image.asset(
              'assets/images/home_green_doctor.png',
              height: 190.h,
            ),
          )
        ],
      ),
    );
  }
}
