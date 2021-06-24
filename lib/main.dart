import 'package:assesapp/model/userlist_changenotifier.dart';
import 'package:assesapp/screens/addnewuser.dart';
import 'package:assesapp/widgets/assesapp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserListChangeNotifier(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: TextStyle(color: Colors.white, fontSize: 60.0),
                headline2: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20.0,
                ),
              ),
        ),
        home: AssesApp(),
        routes: {
          AddNewUser.routeName: (ctx) => AddNewUser(),
        },
      ),
    );
  }
}
