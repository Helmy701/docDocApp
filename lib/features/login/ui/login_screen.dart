import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/ui/widgets/already_have_account_text.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: SafeArea(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: ListView(
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GreyRegular,
            ),
            SizedBox(
              height: 36.h,
            ),
            Form(
              child: Column(
                children: [
                  const AppTextFormField(hintText: "email"),
                  SizedBox(
                    height: 18.h,
                  ),
                  AppTextFormField(
                    hintText: "password",
                    isPassword: isObscure,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(
                        // color: ColorsTheme.mainBlue,
                        isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font13BlueRegular,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppTextButton(
                    buttonText: "login",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const TermsAndConditionsText(),
                  SizedBox(
                    height: 60.h,
                  ),
                  const AlreadyHaveAccountText(),
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
