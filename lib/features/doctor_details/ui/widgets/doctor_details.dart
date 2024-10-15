import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetails extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorDetails({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        height: 100.h,
        child: Row(
          children: [
            // CachedNetworkImage(
            //   imageUrl:
            //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQrjSOOy6TdcJk7Z9AeodUiH8iVOB_NZ4hAw&s",
            //   progressIndicatorBuilder: (context, url, downloadProgress) =>
            //       CircularProgressIndicator(
            //     value: downloadProgress.progress,
            //   ),
            //   errorWidget: (context, url, error) => Icon(Icons.error),
            // ),
            CircleAvatar(
              radius: 50.r,
              backgroundColor: ColorsTheme.liteGreen,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset(
                  width: 100.w,
                  height: 100.h,
                  "assets/images/onboardin_doctor_finder.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    doctorsModel?.name ?? 'Dr.Eion Morgan',
                    style: TextStyles.font20DarkBlueBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    doctorsModel?.degree ?? "MPPS, MD, (Neurology)",
                    style: TextStyles.font13GreyRegular,
                  ),

                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    // "${doctorsModel?.degree} | ${doctorsModel?.phone}",
                    "${doctorsModel?.phone}",
                    style: TextStyles.font13GreyRegular,
                  ),
                  // Text(
                  //   doctorsModel?.email ?? "Email",
                  //   style: TextStyles.font12GreyMedium,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
