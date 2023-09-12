import 'package:flutter/material.dart';
import 'package:kamp_app/Views/widgets/roles%20widgets/investor_details.dart';
import 'package:kamp_app/Views/widgets/roles%20widgets/role_display.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoleDisplay(
        image: 'assets/images/Investor.png', details: InvestorDetails());
  }
}
