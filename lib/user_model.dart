import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id;
  String name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + ' ' + object['last_name']);
  }

  static Future<List<User>> getUser(String page) async {
    Uri apiURL = Uri.parse('https://reqres.in/api/users?page=' + page);
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listuser = (jsonObject as Map<String, dynamic>)['data'];

    List<User> users = [];
    for (int i = 0; i < listuser.length; i++) {
      users.add(User.createUser(listuser[i]));
    }

    return users;
  }

  // static Future<User> connectToAPI(String id) async {
  //   Uri apiURL = Uri.parse('https://reqres.in/api/users/' + id);
  //   var apiResult = await http.get(apiURL);
  //   var jsonObject = json.decode(apiResult.body);
  //   var userData = (jsonObject as Map<String, dynamic>)['data'];

  //   return User.createUser(userData);
  // }

}
