import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focuseBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isPassword;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focuseBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.isPassword,
    this.suffixIcon,
    required this.hintText,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true, //to make me control with padding
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        focusedBorder: focuseBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsTheme.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsTheme.lighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        filled: true,
        fillColor: backgroundColor ?? ColorsTheme.offWhite,
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.focused)
                ? ColorsTheme.mainBlue
                : ColorsTheme.grey),
      ),
      obscureText: isPassword ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
