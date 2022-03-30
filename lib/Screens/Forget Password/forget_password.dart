import 'package:flutter/material.dart';

import '../../App Theme/app_theme.dart';
import '../../Widgets/TextForm Filed/textform_field.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  TextEditingController emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Icon(
                  Icons.lock_outlined,
                  size: 80,
                  color: AppTheme.LightPastelBlue,
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 13,
                ),
                MyTextFormField(name: "Email address", icon: Icons.email_outlined,textEditingController: emailController,),




                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You will recieve your verification code in 1:00 minute"),
                    SizedBox(
                      width: 4,
                    ),

                  ],
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 130,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {

                          Navigator.pushNamed(context,'/VerificationCode') ;

                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: AppTheme.DarkPastelGreen,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        )),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("New user?"),
                      SizedBox(
                        width: 4,
                      ),

                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/SignUp');
                        },
                        child: Text(
                          "Sign-up",
                          style: TextStyle(color: AppTheme.DarkPastelGreen),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

    );
  }
}
