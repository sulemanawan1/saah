import 'package:flutter/material.dart';

import '../../App Theme/app_theme.dart';
import '../../Widgets/TextForm Filed/textform_field.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isHidden = true;
  bool _isHidden2 = true;
  TextEditingController passwordController = new TextEditingController();
  TextEditingController password2Controller = new TextEditingController();
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
                  "Change Password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 13,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    child: TextFormField(
                      obscureText: _isHidden,
                      obscuringCharacter: "*",
                      controller: passwordController,
                      decoration: InputDecoration(
                          suffix: GestureDetector(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              )),
                          filled: true,
                          fillColor: AppTheme.Grey,
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppTheme.LightPastelGreen),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: AppTheme.LightPastelGreen),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    child: TextFormField(
                      obscureText: _isHidden2,
                      obscuringCharacter: "*",
                      controller: password2Controller,
                      decoration: InputDecoration(
                          suffix: GestureDetector(
                              onTap: _togglePasswordView2,
                              child: Icon(
                                _isHidden2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              )),
                          filled: true,
                          fillColor: AppTheme.Grey,
                          prefixIcon: Icon(Icons.lock_outlined),
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppTheme.LightPastelGreen),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: AppTheme.LightPastelGreen),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ),



               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 130,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {



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



                    ],
                  ),
                )

            ),



    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }


  void _togglePasswordView2() {
    setState(() {
      _isHidden2 = !_isHidden2;
    });
  }
}
