
import 'package:flutter/material.dart';
import 'package:saah/App%20Theme/app_theme.dart';

import '../../Widgets/TextForm Filed/textform_field.dart';
import '../../Widgets/TextForm Filed/textform_field_dob.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  DateTime date = new DateTime(2022, 12, 24);
  TextEditingController emailController = new TextEditingController();
  TextEditingController phoneNumberController = new TextEditingController();
  TextEditingController fullNameController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:

      SafeArea(
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
                    "sign-up",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  MyTextFormField(name: "Email address", icon: Icons.email,textEditingController: emailController,),
                  MyTextFormField(
                    name: "Phone Number",
                    icon: Icons.call,textEditingController: phoneNumberController,
                  ),
                  MyTextFormField(
                    name: "Full Name",
                    icon: Icons.person,
                    textEditingController: fullNameController,
                  ),
                  GestureDetector(
                      onTap: () async {
                        print("hello");
                        DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));
                        if (newDate == null) {
                          return;
                        }
                        setState(() => date = newDate);
                      },
                      child: MyTextFormFieldDob(
                          name: "Date of Birth", icon: Icons.cake)),
                  MyTextFormField(name: "Gender", icon: Icons.people,textEditingController: genderController,),
                  MyTextFormField(name: "Password", icon: Icons.lock,textEditingController: passwordController,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {

                            Navigator.pushNamed(context, '/LogiIn');
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: AppTheme.DarkPastelGreen,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            'Sign-up',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {

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
                    padding: const EdgeInsets.fromLTRB(90, 10, 0, 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("have an account?"),
                        SizedBox(
                          width: 2,
                        ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/LogiIn');
                      },
                          child: Text(
                            "Sign-in",
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
}
