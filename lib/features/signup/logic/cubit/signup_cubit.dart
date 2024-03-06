import 'package:bloc/bloc.dart';
import 'package:docdoc/features/signup/data/models/signup_request_body.dart';
import 'package:docdoc/features/signup/data/repos/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  void emitSignupStates() async {
    emit(const SignupState.loading());
    final response = await _signupRepo.signup(SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: '0',
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text));
    response.when(
      success: (signupResponse) {
        emit(
          SignupState.success(signupResponse),
        );
      },
      failure: (error) {
        emit(
          SignupState.error(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
