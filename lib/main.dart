import 'package:flutter/material.dart';
import 'package:task_manager/screen/onboarding/emailVerificationSceen.dart';
import 'package:task_manager/screen/onboarding/loginScreen.dart';
import 'package:task_manager/screen/onboarding/pinVerification.dart';
import 'package:task_manager/screen/onboarding/registrationSceen.dart';
import 'package:task_manager/screen/onboarding/setPasswordSceen.dart';

import 'package:task_manager/utility/utility.dart';

import 'screen/task/homeScreen.dart';
import 'component/newTaskList.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? token = await ReadUserData('token');
  if (token == null) {
    runApp(MyApp("/login"));
  } else {
    runApp(MyApp("/"));
  }
}

class MyApp extends StatelessWidget {
  final String FirstRoute;
  MyApp(this.FirstRoute);

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
      initialRoute: FirstRoute,
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/registration': (context) => RegistrationScreen(),
        '/emailvarification': (context) => EmailVerificationSceen(),
        '/pinvarification': (context) => PinVerificationScreen(),
        '/setPassword': (context) => SetPasswordSceen(),
        '/newtasklist': (context) => NewTaskList()
      },
    );
  }
}
