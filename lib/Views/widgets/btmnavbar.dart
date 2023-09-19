import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:provider/provider.dart';

import '../../Constants/colors.dart';
import '../../Core/providers/btmnavbarprovider.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({super.key});

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BtmNavBarProvider>(
      builder: (context, position, child) {
        return Container(
          height: 65,
          color: AppColors.containerColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BtmNvBrIcon(
                  icon: position.pageIndex == 0
                      ? Ionicons.home
                      : Ionicons.home_outline,
                  onTap: () {
                    position.pageIndex = 0;
                  }),
              BtmNvBrIcon(
                  icon: position.pageIndex == 1
                      ? Ionicons.cube
                      : Ionicons.cube_outline,
                  onTap: () {
                    position.pageIndex = 1;
                  }),
              BtmNvBrIcon(
                  icon: position.pageIndex == 2
                      ? Ionicons.chatbox_ellipses
                      : Ionicons.chatbox_ellipses_outline,
                  onTap: () {
                    position.pageIndex = 2;
                  }),
              BtmNvBrIcon(
                  icon: position.pageIndex == 3
                      ? Ionicons.notifications
                      : Ionicons.notifications_outline,
                  onTap: () {
                    position.pageIndex = 3;
                  })
            ],
          ),
        );
      },
    );
  }
}

class BtmNvBrIcon extends StatelessWidget {
  const BtmNvBrIcon({super.key, required this.icon, required this.onTap});
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        width: 60,
        child: Icon(
          icon,
          size: 28,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
