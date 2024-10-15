import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/doctor_details/ui/succeful_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentButton extends StatelessWidget {
  const AppointmentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const SuccefulScreen()));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorsTheme.mainGreen,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r))),
        child: Text(
          'Book Appointment (\$50.99)',
          style: TextStyles.font18WhiteMedium,
        ),
      ),
    );
  }
}
