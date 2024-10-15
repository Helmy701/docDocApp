import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccefulScreen extends StatelessWidget {
  const SuccefulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150.h,
              ),
              Image.asset(
                width: double.infinity,
                'assets/images/png-transparent-success-kid-desktop-internet-meme-infant-meme-child-face-toddler-thumbnail.png',
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Succeful',
                style: TextStyles.font32GreenBold,
              ),
              const SizedBox(
                height: 40,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 60.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsTheme.mainGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r))),
                  child: Text(
                    'Back to Home Screen',
                    style: TextStyles.font18WhiteMedium,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
