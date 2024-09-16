import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
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
          ClipRRect(
            borderRadius: BorderRadius.circular(40.r),
            child: Image.network(
              width: 80.w,
              height: 80.h,
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQrjSOOy6TdcJk7Z9AeodUiH8iVOB_NZ4hAw&s",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Named',
                  style: TextStyles.font15DarkBlueMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  doctorsModel?.degree ?? "degree",
                  style: TextStyles.font12GreyMedium,
                ),

                SizedBox(
                  height: 5.h,
                ),
                Text(
                  // "${doctorsModel?.degree} | ${doctorsModel?.phone}",
                  "${doctorsModel?.phone}",
                  style: TextStyles.font12GreyMedium,
                ),
                // Text(
                //   doctorsModel?.email ?? "Email",
                //   style: TextStyles.font12GreyMedium,
                // ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Fees',
                    style: TextStyles.font13GreyRegular,
                  ),
                  Text(
                    '  \$50.99',
                    style: TextStyles.font13GreenSemiBold,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 30.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsTheme.mainGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r))),
                  child: Text(
                    'Book Now',
                    style: TextStyles.font14WhiteRegular,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
