import 'dart:html';
import 'dart:js_interop_unsafe';

import 'package:dio/dio.dart';

class AuthService {
  static const API = 'https://techtest.youapp.ai';
  static const headers = {
    'apiKey': ''} // The '' symbol on the left is filled with swaggered header
  static String? token;
  Future<bool> login({
    required String email,
    required String username,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        (API + '/api/login'),
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {"email": email, "username": username, "password": password},
        // data: {"email": "admin@gmail.com", "password": "123"}
      );
      Map obj = response.data;
      if (obj["success"] == false) return false;
      token = obj["data"]["token"];
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
