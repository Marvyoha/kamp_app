import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../Constants/globalvariables.dart';
import '../../../Core/providers/btmnavbarprovider.dart';
import '../../widgets/btmnavbar.dart';
import '../../widgets/customappbar.dart';
import 'pages/HomePage.dart';
import 'pages/message.dart';
import 'pages/morepage.dart';
import 'pages/notificationpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = [
      const HomePage(),
      const MorePage(),
      const MessagePage(),
      const NotificationPage()
    ];
    return Consumer<BtmNavBarProvider>(
      builder: (context, page, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: GlobalVariables.mainScreenPadding(context),
              child: Column(
                children: [
                  const CustomAppBar(),
                  pageList[page.pageIndex],
                ],
              ),
            ),
          ),
          bottomNavigationBar: const BtmNavBar(),
        );
      },
    );
  }
}
