
import 'package:flutter/material.dart';

import '../../App Theme/app_theme.dart';

class MyTextFormFieldDob extends StatelessWidget {
   final String? name;
  final IconData? icon;


  MyTextFormFieldDob({required this.name,required this.icon}) ;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        child: TextFormField(

          enabled: false,
          decoration: InputDecoration(
              prefixIcon:Icon(icon),
              hintText: name,
fillColor: AppTheme.Grey,filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.LightPastelGreen),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide( color: AppTheme.LightPastelGreen),
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
    );
  }
}
