import 'package:flutter/material.dart';

import '../api/apiClient.dart';

class CancelTaskList extends StatefulWidget {
  const CancelTaskList({super.key});

  @override
  State<CancelTaskList> createState() => _CancelTaskListState();
}

class _CancelTaskListState extends State<CancelTaskList> {
  List TaskItems = [];
  bool Loading = true;
  String Status = "New";

  @override
  void initState() {
    CallData();
    super.initState();
  }

  CallData() async {
    var data = await TaskListRequest("Canceled");
    setState(() {
      Loading = false;
      TaskItems = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Loading
        ? (Center(child: CircularProgressIndicator()))
        : RefreshIndicator(
            onRefresh: () async {
              await CallData();
            },
            child: Center(
              child: Text('new'),
            ));
  }
}
