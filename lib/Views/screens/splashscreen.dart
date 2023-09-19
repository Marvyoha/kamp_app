import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/fontstyles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushNamed(context, 'PickRoleScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
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
