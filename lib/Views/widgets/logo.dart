import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'KAMP',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: '.',
            style: TextStyle(
              fontSize: 48,
              color: Color(0xffe48430), // Change the color as desired
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
