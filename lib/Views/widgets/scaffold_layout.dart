import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  final Color? backgroundColor;

  const CustomScaffold({
    Key? key,
    required this.body,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: body),
    );
  }
}
