import 'package:flutter/material.dart';

import '../../App Theme/app_theme.dart';

class MyTextFormField extends StatelessWidget {
  final String? name;
  final IconData? icon;
  final TextEditingController? textEditingController;

  MyTextFormField(
      {required this.name,
      required this.icon,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        child: TextFormField(

          controller: textEditingController,
          decoration: InputDecoration(
              filled: true,
              fillColor: AppTheme.Grey,
              prefixIcon: Icon(icon),
              hintText: name,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppTheme.LightPastelGreen),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.LightPastelGreen),
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
    );
  }
}
