import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../App Theme/app_theme.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // Important: Remove any padding from the ListView.

      children: [

        Container(width: 150,height: 120,
          decoration: BoxDecoration(color:AppTheme.DarkPastelGreen,
            borderRadius: BorderRadius.circular(10)

          ),

          child: Center(child: Text('Recycle',style: TextStyle(color: AppTheme.White,fontWeight: FontWeight.bold),)),),
        Container(width: 150,height: 120,
          decoration: BoxDecoration(color:AppTheme.DarkPastelGreen,
            borderRadius: BorderRadius.circular(10)

          ),

          child: Center(child: Text('Borrow or Loan',style: TextStyle(color: AppTheme.White,fontWeight: FontWeight.bold ),)),),
        Container(width: 150,height: 120,
          decoration: BoxDecoration(color:AppTheme.DarkPastelGreen,
            borderRadius: BorderRadius.circular(10)

          ),

          child: Center(child: Text('Donate',style: TextStyle(color: AppTheme.White,fontWeight: FontWeight.bold),)),),


      ],
    );
  }
}