import 'package:flutter/material.dart';
import 'package:task_manager/screen/onboarding/emailVerificationSceen.dart';
import 'package:task_manager/screen/onboarding/loginScreen.dart';
import 'package:task_manager/screen/onboarding/pinVerification.dart';
import 'package:task_manager/screen/onboarding/registrationSceen.dart';
import 'package:task_manager/screen/onboarding/setPasswordSceen.dart';
import 'package:task_manager/screen/onboarding/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/pinvarification',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/registration': (context) => RegistrationScreen(),
        '/emailvarification': (context) => EmailVerificationSceen(),
        '/pinvarification': (context) => PinVerificationScreen(),
        '/setpassword': (context) => SetPasswordSceen()
      },
    );
  }
}
