import 'package:flutter/material.dart';
import 'package:task_manager/utility/utility.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  String email = '';
  @override
  void initState() {
    callUserData();
    // TODO: implement initState
    super.initState();
  }

  callUserData() async {
    var a = await ReadUserData("email");
    setState(() {
      email = a!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(email),
      ),
    );
  }
}
