import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../Constants/fontstyles.dart';
import '../../../Constants/globalvariables.dart';
import '../../widgets/dottedbutton.dart';
import '../../widgets/formbutton.dart';
import '../../widgets/formtextfield.dart';

class CreateAccountFounder extends StatelessWidget {
  const CreateAccountFounder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: GlobalVariables.formPadding(context),
        child: ListView(children: [
          Text(
            'Let\'s get to know you',
            textAlign: TextAlign.center,
            style: FontStyles.headerMedium2,
          ),
          GlobalVariables.spacing,
          const FormTextField(
              icon: Ionicons.person_outline, description: 'Full Name:'),
          const FormTextField(
              icon: Ionicons.mail_outline, description: 'Email-Address:'),
          const FormTextField(
              icon: Ionicons.briefcase_outline, description: 'Company Name:'),
          const FormTextField(
              icon: Ionicons.location_outline, description: 'Location'),
          const FormTextField(
              icon: Ionicons.key_outline, description: 'Password:'),
          const FormTextField(
              icon: Ionicons.key_outline, description: 'Confirm Password:'),
          DottedButton(
              label: 'Add a picture',
              ontap: () {},
              icon: Ionicons.image_outline),
          GlobalVariables.spacing,
          FormButton(
            label: 'Continue',
            ontap: () {
              Navigator.pushNamed(context, 'CriteriaFounder');
            },
            icon: Ionicons.arrow_forward_circle,
          ),
        ]),
      ),
    );
  }
}
