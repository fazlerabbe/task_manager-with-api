import 'package:flutter/material.dart';

import '../../component/appbottomNav.dart';
import '../../component/cancleTaskList.dart';
import '../../component/completeTaskList.dart';
import '../../component/newTaskList.dart';
import '../../component/progressTaskList.dart';
import '../../component/taskAppBar.dart';
import '../../utility/utility.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int TabIndex = 0;
  Map<String, String> ProfileData = {
    "email": "",
    "firstName": "",
    "lastName": "",
    "photo": DefaultProfilePic
  };

  onItemTapped(int index) {
    setState(() {
      TabIndex = index;
    });
  }

  final widgetOptions = [
    NewTaskList(),
    ProgressTaskList(),
    CompleteTask(),
    CancelTaskList()
  ];

  ReadAppBarData() async {
    String? email = await ReadUserData('email');
    String? firstName = await ReadUserData('firstName');
    String? lastName = await ReadUserData('lastName');
    String? photo = await ReadUserData('photo');
    setState(() {
      ProfileData = {
        "email": '$email',
        "firstName": '$firstName',
        "lastName": '$lastName',
        "photo": '$photo'
      };
    });
  }

  @override
  void initState() {
    ReadAppBarData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskAppBar(context, ProfileData),
      body: widgetOptions.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex, onItemTapped),
    );
  }
}
