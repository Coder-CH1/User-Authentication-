
import 'dart:html';
import 'dart:io';

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
          '',
        data: {
            'name': name,
          'email': email,
          'password': password
        }
          );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('');
    }

  }

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await _dio.post(
          '',
          data: {
            'email': email,
            'password': password
          }
      );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('');
    }
  }
}