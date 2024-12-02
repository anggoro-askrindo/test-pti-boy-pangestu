import 'dart:developer';

import 'package:dio/dio.dart';
// import 'package:sisi_app_prabowo/models/notification_model.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://api.mocki.io/v2/ec85i1j1", // Base API URL
      connectTimeout: Duration(seconds: 1), // Connection timeout
      receiveTimeout: Duration(seconds: 1), // Response timeout
      headers: {"Content-Type": "application/json"},
    ),
  );

  Future<bool> login(Map<String, dynamic> credentials) async {
    try {
      final response = await _dio.post('/login', data: credentials);

      if (response.statusCode == 200) {
        // Login success

        inspect(response);
        return true;
      } else {
        throw Exception("Login failed");
      }
    } on DioError catch (e) {
      // Handle Dio errors
      if (e.response != null) {
        throw Exception(e.response?.data["message"] ?? "An error occurred");
      } else {
        throw Exception(e.message);
      }
    }
  }
}
