import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:latihan_11pplg2/models/login_model.dart';

class AuthService {
  static const String baseUrl = 'https://mediadwi.com/api/latihan';

  static Future<Loginmodel> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {'username': username, 'password': password},
      );

      final Map<String, dynamic> data = jsonDecode(response.body);
      final loginResponse = Loginmodel.fromJson(data);

      if (response.statusCode != 200 && !loginResponse.status) {
        throw Exception(loginResponse.message);
      }

      return loginResponse;
    } catch (e) {
      if (e is FormatException) {
        throw Exception('Failed to parse server response');
      }
      throw Exception(e.toString().replaceAll('Exception: ', ''));
    }
  }
}
