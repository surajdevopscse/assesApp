import 'package:assesapp/model/usermodel.dart';
import 'package:assesapp/services/gitservice.dart';
import 'package:flutter/cupertino.dart';

class UserListChangeNotifier extends ChangeNotifier {
  final GitService _serviceObj = GitService();

  List<UserModel> listOfUser = [];

  void getAllUser() async {
    var futureofgetUser = await _serviceObj.getDataFromRestApi;
    listOfUser = futureofgetUser;
    notifyListeners();
  }
}
