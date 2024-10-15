import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/doctor_details/ui/widgets/appointment_button.dart';
import 'package:docdoc/features/doctor_details/ui/widgets/choose_time.dart';
import 'package:docdoc/features/doctor_details/ui/widgets/doctor_details.dart';
import 'package:docdoc/features/doctor_details/ui/widgets/doctor_details_top_bar.dart';
import 'package:docdoc/features/doctor_details/ui/widgets/select_day_list_view.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorDetailsScreen({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DoctorDetailsTopBar(),
              DoctorDetails(
                doctorsModel: doctorModel,
              ),
              Text(
                'Doctor Biography',
                style: TextStyles.font20DarkBlueBold,
              ),
              Text(
                'Doctor Biography ;kldsfsfds fgk;jfd ;kjdgd;h ads;khjgf ;jhgf ads;lih;lkdsaf ;lssf;ldgs ;jjnd;laln gds;kjndgskl ;ldfasj ;l kjdkflhdv jlkjh;kj jlhj jh;kjh; kjhjk;hlkj jhj;kjl ',
                style: TextStyles.font14GreyRegular,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'schedules',
                style: TextStyles.font20DarkBlueBold,
              ),
              SizedBox(
                height: 10.h,
              ),
              const SelectDayListView(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Choose Times',
                style: TextStyles.font20DarkBlueBold,
              ),
              SizedBox(
                height: 10.h,
              ),
              const ChooseTime(),
              SizedBox(
                height: 20.h,
              ),
              const AppointmentButton(),
            ],
          ),
        ),
      ),
    );
  }
}
