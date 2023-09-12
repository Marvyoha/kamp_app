import 'package:flutter/material.dart';
import 'package:kamp_app/Constants/colors.dart';
import 'package:kamp_app/Constants/fontstyles.dart';
import 'package:kamp_app/Constants/globalvariables.dart';

import '../widgets/introbutton.dart';
import '../widgets/logo.dart';
import 'founder path/pick_role_founder.dart';

class PickRoleScreen extends StatelessWidget {
  const PickRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: GlobalVariables.introPadding(context),
        child: Center(
          child: Column(children: [
            const Logo(),
            SizedBox(height: GlobalVariables.sizeHeight(context) * 0.25),
            Text('Welcome to Kamp',
                style: FontStyles.headerLarge.copyWith(color: Colors.white)),
            Text(
              'Which option applies to you?',
              style: FontStyles.headerMedium.copyWith(color: Colors.white),
            ),
            GlobalVariables.spacing,
            IntroButton(
                label: 'Founder',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PickRoleFounder()));
                }),
            IntroButton(label: 'Investor', ontap: () {}),
            IntroButton(label: 'Talent', ontap: () {})
          ]),
        ),
      ),
    );
  }
}
