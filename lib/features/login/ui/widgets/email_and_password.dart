import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: "Email",
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
              },
              controller: context.read<LoginCubit>().emailController,
            ),
            SizedBox(
              height: 18.h,
            ),
            AppTextFormField(
              controller: context.read<LoginCubit>().passwordController,
              hintText: "Password",
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
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value)) {
                  return 'Please enter a valild password';
                }
              },
            ),
            SizedBox(
              height: 24.h,
            ),
            PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasNumber: hasNumber,
              hasSpecialCharacter: hasSpecialCharacter,
              hasMinLengh: hasMinLength,
            ),
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }
}
