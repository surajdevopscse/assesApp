import 'dart:convert';
import 'package:assesapp/model/usermodel.dart';
import 'package:http/http.dart' as http;

class GitService {
  Future<List<UserModel>> get getDataFromRestApi async {
    final List<UserModel> loadedUser = [];
    try {
      const _domainString = "api.github.com";
      Uri url = Uri.https(_domainString, '/users');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        //print("hello");
        var extractedData = jsonDecode(response.body) as List<dynamic>;
        print(extractedData);
        extractedData.forEach((eachData) {
          loadedUser.add(UserModel.fromJSON(eachData));
        });
        return loadedUser;
      }
    } catch (e) {
      print(e);
    }
    return loadedUser;
  }
}
