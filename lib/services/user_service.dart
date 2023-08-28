import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:app_example/constants.dart';
import 'package:app_example/models/user_model.dart';

class UserService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> model = userFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  static Future<Map<String, dynamic>> login(
      String email, String password) async {
    var url = Uri.parse(
        '${ApiConstants.baseUrl}${ApiConstants.usersEndpoint}/sign_in');
    Map<String, String> headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'email': email, 'password': password});
    final response = await http.post(url, body: body, headers: headers);
    if (response.statusCode == 200) {
      final bodyResponse = jsonDecode(response.body);
      if (bodyResponse['success']) {
        return bodyResponse['data'];
      } else {
        throw Exception(bodyResponse['message']);
      }
    } else {
      throw Exception('Failed to login');
    }
  }
}
