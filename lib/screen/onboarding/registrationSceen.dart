import 'package:flutter/material.dart';

import '../../style/style.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Join With Us", style: Head1Text(colorDarkBlue)),
                  SizedBox(height: 1),
                  Text("Learn with rabbil hasan",
                      style: Head6Text(colorLightGray)),
                  SizedBox(height: 20),
                  TextFormField(
                      decoration: AppInputDecoration("Email Address"),
                      onChanged: (Textvalue) {
                        //InputOnChange("email", Textvalue);
                      }),
                  SizedBox(height: 20),
                  TextFormField(
                      decoration: AppInputDecoration("First Name"),
                      onChanged: (Textvalue) {
                        //InputOnChange("firstName", Textvalue);
                      }),
                  SizedBox(height: 20),
                  TextFormField(
                      decoration: AppInputDecoration("Last Name"),
                      onChanged: (Textvalue) {
                        //InputOnChange("lastName", Textvalue);
                      }),
                  SizedBox(height: 20),
                  TextFormField(
                      decoration: AppInputDecoration("Mobile"),
                      onChanged: (Textvalue) {
                        // InputOnChange("mobile", Textvalue);
                      }),
                  SizedBox(height: 20),
                  TextFormField(
                      decoration: AppInputDecoration("Password"),
                      onChanged: (Textvalue) {
                        // InputOnChange("password", Textvalue);
                      }),
                  SizedBox(height: 20),
                  TextFormField(
                      decoration: AppInputDecoration("Confirm Password"),
                      onChanged: (Textvalue) {
                        //InputOnChange("cpassword", Textvalue);
                      }),
                  SizedBox(height: 20),
                  Container(
                    child: ElevatedButton(
                      style: AppButtonStyle(),
                      child: SuccessButtonChild('Registration'),
                      onPressed: () {
                        //FormOnSubmit();
                      },
                    ),
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
