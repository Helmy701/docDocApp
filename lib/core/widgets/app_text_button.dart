import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  final Color? backgroundColor;
  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.buttonText,
      this.textStyle,
      required this.onPressed,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius?.r ?? 16.r,
            ),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? ColorsTheme.mainBlue,
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 50.h),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle ?? TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
