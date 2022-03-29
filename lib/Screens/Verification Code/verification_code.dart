import 'package:flutter/material.dart';

import '../../App Theme/app_theme.dart';
import '../../Widgets/TextForm Filed/textform_field.dart';
class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Icon(
                  Icons.lock,
                  size: 80,
                  color: AppTheme.LightPastelBlue,
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Verification Code",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 13,
                ),
              Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("Enter your 4 digits verfication code."),
          SizedBox(
            width: 4,
          ),

          ],
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                child: TextFormField(

                  obscureText: true,obscuringCharacter: '*',
textAlign: TextAlign.center,
                  decoration: InputDecoration(

                      filled:true,
                      fillColor: AppTheme.Grey,


                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppTheme.LightPastelGreen),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide( color: AppTheme.LightPastelGreen),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
            )
,
            Row( mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("if you didn't recieve your verification code click ?",
              style: TextStyle(fontSize: 12),),
SizedBox(width: 5,),
              Text("Resend code",style: TextStyle(color: AppTheme.DarkPastelGreen)),
            ],
          ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 130,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
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
                      Text("New user ?",style: TextStyle(fontSize: 17),),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Sign-up",
                        style: TextStyle(color: AppTheme.DarkPastelGreen,fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
