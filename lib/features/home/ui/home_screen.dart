import 'package:docdoc/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:docdoc/features/home/ui/widgets/home_top_bar.dart';
import 'package:docdoc/features/home/ui/widgets/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              SizedBox(
                height: 24.h,
              ),
              const DoctorsSpecialitySeeAll(),
              SizedBox(
                height: 18.h,
              ),
              const SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
