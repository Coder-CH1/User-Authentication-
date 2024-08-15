
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio( BaseOptions(
    baseUrl: 'http://localhost:3000',
    headers: {'Content-Type': 'application/json'},
  )
  );

  Future<Map<String, dynamic>> register(String name, String email, String password) async {
    try {
      final response = await _dio.post(
          '/register',
        data: {
            'name': name,
          'email': email,
          'password': password
        }
          );
      if (response.statusCode == 201) {
        return response.data as Map<String, dynamic>;
      } else {
        throw Exception('Registration failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('registration failed');
      throw Exception('registration error: $e');

    }

  }

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await _dio.post(
          '/login',
          data: {
            'email': email,
            'password': password
          }
      );
      if (response.statusCode == 201) {
        return response.data as Map<String, dynamic>;
      } else {
        throw Exception('Registration failed');
      }
    } catch (e) {
      throw Exception('');
    }
  }

  Future<void> logout() async {
    try {
      await _dio.post('/logout');
    } catch (e) {
      throw Exception();
    }
  }
}