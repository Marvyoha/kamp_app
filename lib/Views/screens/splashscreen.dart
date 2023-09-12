import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:kamp_app/Views/screens/pick_role.dart';

import '../../Constants/colors.dart';
import '../../Constants/fontstyles.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const PickRoleScreen()),
        );
      });
    });

    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        child: Center(
          child: Text(
            'KAMP.',
            style: FontStyles.headerLarge
                .copyWith(fontSize: 60, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
