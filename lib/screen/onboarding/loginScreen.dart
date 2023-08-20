import 'package:flutter/material.dart';

import '../../style/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Get Started With", style: Head1Text(colorDarkBlue)),
                  SizedBox(height: 1),
                  Text("Learn with rabbil hasan",
                      style: Head6Text(colorLightGray)),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (Textvalue) {
                      // InputOnChange("email", Textvalue);
                    },
                    decoration: AppInputDecoration("Email Address"),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (Textvalue) {
                      // InputOnChange("password", Textvalue);
                    },
                    decoration: AppInputDecoration("Password"),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: ElevatedButton(
                      style: AppButtonStyle(),
                      child: SuccessButtonChild('Login'),
                      onPressed: () {
                        // FormOnSubmit();
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
