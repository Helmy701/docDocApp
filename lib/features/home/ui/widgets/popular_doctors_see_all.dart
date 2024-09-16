import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PopularDoctorsSeeAll extends StatelessWidget {
  const PopularDoctorsSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Popular Doctors',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyles.font13GreenRegular,
        )
      ],
    );
  }
}
