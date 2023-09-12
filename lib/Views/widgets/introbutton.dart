import 'package:flutter/material.dart';

import '../../Constants/fontstyles.dart';
import '../../Constants/globalvariables.dart';

class IntroButton extends StatelessWidget {
  final String label;
  final void Function()? ontap;

  const IntroButton({super.key, required this.label, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: GlobalVariables.sizeWidth(context),
          height: GlobalVariables.sizeHeight(context) * 0.087,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Center(
              child: Text(
                label,
                style: FontStyles.buttonLarge.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
