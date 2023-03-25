import 'dart:convert';

import 'package:money_record/data/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Session {
  static Future<bool> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    Map<String, dynamic> mapUser = user.toJson();
    String stringUser = jsonEncode(mapUser);
    bool success = await prefs.setString('user', stringUser);
    return success;
  }

  static Future<User> getUser() async {
    User user = User(); //default value
    final prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString('user');
    if (stringUser != null) {
      Map<String, dynamic> mapUser = jsonDecode(stringUser);
      user = User.fromJson(mapUser);
    }
    return user;
  }

  static Future<bool> clearUser() async {
    final prefs = await SharedPreferences.getInstance();
    bool success = await prefs.remove('user');
    return success;
  }
}
