import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kamp_app/Constants/globalvariables.dart';
import 'package:kamp_app/Core/btmnavbarprovider.dart';
import 'package:kamp_app/Views/screens/main/pages/HomePage.dart';
import 'package:kamp_app/Views/screens/main/pages/message.dart';
import 'package:kamp_app/Views/screens/main/pages/morepage.dart';
import 'package:kamp_app/Views/screens/main/pages/notificationpage.dart';
import 'package:kamp_app/Views/widgets/btmnavbar.dart';
import 'package:kamp_app/Views/widgets/logos.dart';
import 'package:provider/provider.dart';

import '../../widgets/customappbar.dart';

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
