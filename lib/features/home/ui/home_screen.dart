import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Screen',
          style: TextStyles.font32BlueBold,
        ),
      ),
    );
  }
}