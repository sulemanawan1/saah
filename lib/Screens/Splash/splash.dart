import 'package:flutter/material.dart';
import 'package:saah/App%20Theme/app_theme.dart';
import 'package:saah/Screens/Sign%20Up/sign_up.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: SignUp(),

      duration: 5000,
      imageSize: 300,
      text: "Less is more",
    textStyle: TextStyle(color: AppTheme.White,fontSize: 27),
      imageSrc: "images/logo.jpeg",

      backgroundColor: AppTheme.DarkPastelBlue,
    );
  }
}
