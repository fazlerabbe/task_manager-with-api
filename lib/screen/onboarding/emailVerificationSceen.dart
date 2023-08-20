import 'package:flutter/material.dart';

import '../../style/style.dart';

class EmailVerificationSceen extends StatefulWidget {
  const EmailVerificationSceen({super.key});

  @override
  State<EmailVerificationSceen> createState() => _EmailVerificationSceenState();
}

class _EmailVerificationSceenState extends State<EmailVerificationSceen> {
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
                    Text("Your Email Address", style: Head1Text(colorDarkBlue)),
                    SizedBox(height: 1),
                    Text(
                        "A 6 digit verification pin will send to your email address",
                        style: Head6Text(colorLightGray)),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (Textvalue) {
                        //  InputOnChange("email", Textvalue);
                      },
                      decoration: AppInputDecoration("Email Address"),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: ElevatedButton(
                        style: AppButtonStyle(),
                        child: SuccessButtonChild('Next'),
                        onPressed: () {
                          // FormOnSubmit();
                        },
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
