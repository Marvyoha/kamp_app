import 'package:flutter/material.dart';
import 'package:kamp_app/Views/widgets/roles%20widgets/role_display.dart';
import 'package:kamp_app/Views/widgets/roles%20widgets/talent_details.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoleDisplay(
        image: 'assets/images/Talent.png', details: TalentDetails());
  }
}
