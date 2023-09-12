import 'package:flutter/material.dart';
import 'package:kamp_app/Constants/colors.dart';

class RoleDisplay extends StatelessWidget {
  const RoleDisplay({
    super.key,
    required this.image,
    required this.details,
  });

  final String image;
  final Widget details;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.secondaryColor.withOpacity(0.3)),
              child: details,
            ),
          ],
        ),
      ),
    );
  }
}
