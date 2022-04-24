import 'package:flutter/material.dart';
import 'package:saah/Screens/Change%20Password/change_password.dart';
import 'package:saah/Screens/Home%20Page/home_page.dart';
import 'package:saah/Screens/Verification%20Code/verification_code.dart';
import 'package:saah/Screens/Forget%20Password/forget_password.dart';


import 'Screens/Log In/login.dart';
import 'Screens/Notification/notification.dart';
import 'Screens/Sign Up/sign_up.dart';
import 'Screens/Splash/splash.dart';


void main()

{

runApp(AppStart());
}





class AppStart extends StatelessWidget {
  const AppStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute:'/Notification' ,
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/LogiIn':(context)=>LogIn(),
        '/SignUp':(context)=>SignUp(),
        '/ForgetPassword':(context)=>ForgetPassword(),
        '/ChangePassword':(context)=>ChangePassword(),
        '/VerificationCode':(context)=> VerificationCode(),
        '/Notification':(context)=> Notifications(),
        '/HomePage':(context)=> HomePage(),

      },
    );
  }
}
