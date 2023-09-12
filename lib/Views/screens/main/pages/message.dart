import 'package:flutter/material.dart';
import 'package:kamp_app/Views/widgets/roles%20widgets/founder_details.dart';

import '../../../widgets/roles widgets/role_display.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoleDisplay(
        image: 'assets/images/Founder.png', details: FounderDetails());
  }
}
