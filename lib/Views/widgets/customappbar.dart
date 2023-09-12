import 'package:flutter/material.dart';

import 'logos.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          LogoMini(),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
