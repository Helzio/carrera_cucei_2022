import 'dart:convert';

import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/acore/dio/infrastructure/extensions/extension.dart';
import 'package:carrera_cucei_2022/features/ranking/infrastructure/dtos/ranking_user_dto.dart';
import 'package:dio/dio.dart';

class RankingmeRemoteService {
  final Dio _dio;

  RankingmeRemoteService(this._dio);

  Future<RankingUserDto> getRankingme({
    required String codigo,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        "https://carreraapp.000webhostapp.com/rankingme.php?codigo=$codigo",
      );
    } on DioError catch (e) {
      if (e.isConnectionError) {
        throw InternetException();
      } else {
        throw ServerException();
      }
    }

    if (response.statusCode == 200) {
      final data = response.data;
      print(data);
      if (data.toString().contains("Nombre")) {
        final stringData = data.toString();
        return RankingUserDto.fromJson(
          jsonDecode(stringData) as Map<String, dynamic>,
        );
      } else if (data == "400") {
        throw SqlConectionException();
      } else if (data == "Error al conectarse") {
        throw SqlConectionException();
      } else {
        throw ServerException();
      }
    } else {
      throw ServerException();
    }
  }
}
