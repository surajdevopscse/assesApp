import 'package:assesapp/screens/addnewuser.dart';
import 'package:assesapp/widgets/listviewbuilder.dart';
import 'package:flutter/material.dart';

class AssesApp extends StatefulWidget {
  const AssesApp({Key? key}) : super(key: key);

  @override
  _AssesAppState createState() => _AssesAppState();
}

class _AssesAppState extends State<AssesApp> {
  navigateToAddNewUser(context) {
    Navigator.pushNamed(context, AddNewUser.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Users'),
      ),
      body: ListViewBuilder(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToAddNewUser(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
