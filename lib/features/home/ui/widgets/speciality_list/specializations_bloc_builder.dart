import 'package:docdoc/features/home/logic/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list/doctors_shimmers_loading.dart';
import 'package:docdoc/features/home/ui/widgets/popular_doctors_see_all.dart';
import 'package:docdoc/features/home/ui/widgets/speciality_list/speciality_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/speciality_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
            return setupLoading();
          },
          specializationsSuccess: (specializationsList) {
            return SpecialityListView(
              specializationsList: specializationsList ?? [],
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

  setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          SizedBox(
            height: 8.h,
          ),
          const DoctorsShimmersLoading(),
        ],
      ),
    );
  }
}
