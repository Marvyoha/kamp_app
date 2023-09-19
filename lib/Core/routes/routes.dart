import 'package:flutter/material.dart';

import '../../Views/screens/founder path/create_account_founder.dart';
import '../../Views/screens/founder path/criteria_founder.dart';
import '../../Views/screens/founder path/pick_role_founder.dart';
import '../../Views/screens/main/mainpage.dart';
import '../../Views/screens/pick_role.dart';
import '../../Views/screens/splashscreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'SplashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case 'PickRoleScreen':
        return MaterialPageRoute(builder: (_) => const PickRoleScreen());

      case 'PickRoleFounder':
        return MaterialPageRoute(builder: (_) => const PickRoleFounder());

      case 'CreateAccountFounder':
        return MaterialPageRoute(builder: (_) => const CreateAccountFounder());

      case 'CriteriaFounder':
        return MaterialPageRoute(builder: (_) => const CriteriaFounder());

      case 'MainPage':
        return MaterialPageRoute(builder: (_) => const MainPage());

      default:
        return _routingError();
    }
  }

  static Route<dynamic> _routingError() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              body: Center(child: Text('Routing Error')),
            ));
  }
}
