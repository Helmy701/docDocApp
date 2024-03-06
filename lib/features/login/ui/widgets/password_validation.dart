import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow(
            'At least 1 specialCharacter letter', hasSpecialCharacter),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least 1 number letter', hasNumber),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least 8 characters long', hasMinLength),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: ColorsTheme.grey,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsTheme.grey : ColorsTheme.darkBlue,
          ),
        ),
      ],
    );
  }
}
