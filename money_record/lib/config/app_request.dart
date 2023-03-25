import 'dart:html';

import 'package:d_method/d_method.dart';
import 'package:http/http.dart' as http;

class AppRequest {
  static Future<Map?> gets(String url, {Map<String, String>? headers}) async {
    try {
      var response = await http.get(Uri.parse(url), headers: headers);
    } catch (e) {
      DMethod.printTitle('ctach', e.toString());
    }
  }
}
