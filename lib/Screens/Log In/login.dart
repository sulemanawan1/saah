
import 'package:flutter/material.dart';

import '../../App Theme/app_theme.dart';
import '../../Widgets/TextForm Filed/textform_field.dart';
class LogIn extends StatefulWidget {

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  bool _isHidden = true;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: SafeArea(

        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Icon(
                    Icons.person_add,
                    size: 80,
                    color: AppTheme.LightPastelBlue,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "sign-in",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  MyTextFormField(name: "Email address", icon: Icons.email_outlined,textEditingController: emailController,),

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
              GestureDetector(
                onTap: (){ Navigator.pushNamed(context,'/ForgetPassword') ;  },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(42, 10,0, 10),
                  child: Row(
                    children: [Text("forgot Password?"),],),
                ),
              ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
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
                            'Sign-in',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("hello");
                    },
                    child: Container(
                      width: 220,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppTheme.DarkPastelGreen),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Sig-up with",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Image(
                            image: AssetImage("images/googleicon.png"),
                            width: 40,
                            height: 50,
                          )
                        ],
                      ),
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
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
