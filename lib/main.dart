import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Core/providers/btmnavbarprovider.dart';
import 'Core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BtmNavBarProvider()),
      ],
      child: MaterialApp(
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Kamp.',
        theme: ThemeData(useMaterial3: true),
        initialRoute: 'SplashScreen',
      ),
    );
  }
}
