import 'dart:convert';

import 'package:market_food/common/failure.dart';

import '../models/user.dart';
import 'package:dio/dio.dart';

abstract class AllRemoteDataSource {
  Future<ApiReturnValue<User>> login(String email, String password);
}

class AllRemoteDataSourceImpl extends AllRemoteDataSource {
  static const BASE_URL = "http://foodmarket-backend.buildwithangga.id/api/";
  final dio = Dio();

  Future<ApiReturnValue<User>> login(String email, String password) async {
    var url = BASE_URL + "login";
    var response = await dio.post(
      url,
      data: jsonEncode(<String, String>{'email': email, 'password': password}),
      options: Options(
        headers: {"Content-Type": "application/json"},
      ),
    );

    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.data);
    var token = data['data']['access_token'];
    User value = User.fromJson(data['data']['user']);
    print("ini token ${token}");
    return ApiReturnValue(value: value);
  }

  // Future<> login() {

  // }

  // Future<> register() {

  // }
}
