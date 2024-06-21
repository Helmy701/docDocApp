import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          specializationsSuccess: (specializationsResponseModel) {
            var specializationsList =
                specializationsResponseModel.specializationDataList;
            return Expanded(
              child: Column(
                children: [
                  DoctorsSpecialityListView(
                    specializationsList: specializationsList ?? [],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DoctorsListView(
                    doctorsList: specializationsList?.first?.doctorsList,
                  ),
                ],
              ),
            );
          },
          specializationsError: (errorHandler) => const SizedBox.shrink(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
