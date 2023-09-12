import 'package:flutter/material.dart';

import '../../Constants/fontstyles.dart';
import '../../Constants/globalvariables.dart';

class FormTextField extends StatefulWidget {
  final IconData icon;
  final String description;

  const FormTextField({
    Key? key,
    required this.icon,
    required this.description,
  }) : super(key: key);

  @override
  _FormTextFieldState createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.description, style: FontStyles.bodyLarge),
          Container(
            width: GlobalVariables.sizeWidth(context),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    widget.icon,
                    color: Colors.grey,
                    size: 28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
