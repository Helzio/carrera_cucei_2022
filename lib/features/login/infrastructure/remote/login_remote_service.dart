import 'dart:convert';

import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/acore/dio/infrastructure/extensions/extension.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/dtos/corredor_dto.dart';
import 'package:dio/dio.dart';

class LoginRemoteService {
  final Dio _dio;

  LoginRemoteService(this._dio);

  Future<CorredorDto> login({
    required String email,
    required String password,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        "https://carreraapp.000webhostapp.com/login.php?codigo=$email&pass=$password",
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );
    } on DioError catch (e) {
      if (e.isConnectionError) {
        throw InternetException();
      } else {
        final response = e.response;
        if (response != null && response.statusCode == 400) {
          throw DatosInvalidosException();
        }
        throw ServerException();
      }
    }

    if (response.statusCode == 200) {
      final data = response.data;
      if (data == "400") {
        throw DatosInvalidosException();
      } else {
        return CorredorDto.fromJson(
          jsonDecode(data.toString()) as Map<String, dynamic>,
        );
      }
    } else if (response.statusCode == 400) {
      throw DatosInvalidosException();
    } else {
      throw ServerException();
    }
  }
}
