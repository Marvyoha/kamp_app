import 'package:flutter/material.dart';
import 'package:kamp_app/Views/screens/founder%20path/create_account_founder.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/fontstyles.dart';
import '../../../Constants/globalvariables.dart';
import '../../widgets/introbutton.dart';
import '../../widgets/logos.dart';

class PickRoleFounder extends StatelessWidget {
  const PickRoleFounder({super.key});

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
            Text(
              'I am looking for',
              style: FontStyles.headerMedium.copyWith(color: Colors.white),
            ),
            GlobalVariables.spacing,
            IntroButton(
                label: 'Investor',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccountFounder()));
                }),
            IntroButton(
                label: 'Talent',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccountFounder()));
                })
          ]),
        ),
      ),
    );
  }
}
