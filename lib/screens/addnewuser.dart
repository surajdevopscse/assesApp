import 'package:assesapp/model/usermodel.dart';
import 'package:flutter/material.dart';

class AddNewUser extends StatefulWidget {
  static final String routeName = '/addNewUser';

  @override
  _AddNewUserState createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  String? _userName;
  UserModel _newUser = UserModel();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildUserName() {
    return TextFormField(
      validator: (String? value) {
        if (value?.isEmpty == true) {
          return "User Name Required !";
        }
        return null;
      },
      decoration:
          InputDecoration(labelText: 'User Name:', hintText: 'Enter User Name'),
      onSaved: (String? value) {
        _userName = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New User'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                _buildUserName(),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState?.save();
                      _newUser = UserModel(
                        login: _userName,
                      );
                      print("Saved");
                      Navigator.pop(context);
                    }
                    return null;
                  },
                  child: Text('Add new User'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
