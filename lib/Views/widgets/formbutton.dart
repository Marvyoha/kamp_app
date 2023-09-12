import 'package:flutter/material.dart';
import 'package:kamp_app/Constants/colors.dart';

import '../../Constants/fontstyles.dart';

class FormButton extends StatelessWidget {
  final String label;
  final void Function()? ontap;
  final IconData? icon;

  const FormButton(
      {Key? key, required this.label, required this.ontap, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: FontStyles.buttonLarge.copyWith(color: Colors.white),
                ),
                Icon(
                  icon,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
