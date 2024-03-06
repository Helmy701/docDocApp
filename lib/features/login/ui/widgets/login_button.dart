import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routes/routes.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        // when one of these states or null
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context,
                builder: (context) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorsTheme.darkBlue,
                      ),
                    ));
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamedAndRemoveUntil(
                Routes.homeScreen, (route) => false);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: AppTextButton(
        buttonText: "login",
        onPressed: () {
          validateThenDoLogin(context);
        },
      ),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
              onPressed: () => context.pop(),
              child: Text(
                'Got it',
                style: TextStyles.font14BlueSemiBold,
              ))
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
    // if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    //   context.read<LoginCubit>().emitLoginStates(
    //         LoginRequestBody(
    //             email: context.read<LoginCubit>().emailController.text,
    //             password: context.read<LoginCubit>().passwordController.text),
    //       );
    // }
  }
}
