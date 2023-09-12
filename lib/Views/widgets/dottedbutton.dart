import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../Constants/fontstyles.dart';

class DottedButton extends StatelessWidget {
  final String label;
  final void Function()? ontap;
  final IconData icon;

  const DottedButton(
      {Key? key, required this.label, required this.ontap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: DottedBorder(
        dashPattern: const [5],
        radius: const Radius.circular(15),
        borderType: BorderType.RRect,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 110, 110, 184),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 30),
                  Text(
                    label,
                    style: FontStyles.buttonLarge.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
