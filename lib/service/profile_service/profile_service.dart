import 'package:dio/dio.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';

class ProfileService {
  static const API = 'https://techtest.youapp.ai';
  static const headers = {
    'apiKey': ''} // The '' symbol on the left is filled with swaggered header
  Future createProfile({
    required String name,
    required String birthday,
    required double height,
    required double weight,
    required String interests,
  }) async {
    var response = await Dio().post(
      (API + "/api/createProfile"),
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "name": name,
        "birthday": birthday,
        "height": height,
        "weight": weight,
        "interests": [String]
      },
    );
    Map obj = response.data;
    return obj["data"]["id"];
  }

  Future<List> getProfile() async {
    var response = await Dio().get(
       (API +  '/api/getProfile'),
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${AuthService.token}"
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  Future updateProfile({
    required String name,
    required String birthday,
    required double height,
    required double weight,
    required String interests,
  }) async {
    var id = 2;
    var response = await Dio().put(
        (API + "/api/updateProfile/$id"),
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "name": name,
        "birthday": birthday,
        "height": height,
        "weight": weight,
        "interests": [String]
      },
    );
    Map obj = response.data;
    return obj["data"]["id"];
  }

  Future deleteProfile(int id) async {
    var id = 2;
    var response = await Dio().delete(
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
        (API + "/api/deleteProfile/$id"),
    );
    print(response.statusCode);
  }
}
