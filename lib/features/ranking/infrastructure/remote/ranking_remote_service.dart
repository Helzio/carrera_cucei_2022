import 'dart:convert';

import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/acore/dio/infrastructure/extensions/extension.dart';
import 'package:carrera_cucei_2022/features/ranking/infrastructure/dtos/ranking_user_dto.dart';
import 'package:dio/dio.dart';

class RankingRemoteService {
  final Dio _dio;

  RankingRemoteService(this._dio);

  Future<List<RankingUserDto>> getRanking() async {
    Response response;
    try {
      response = await _dio.get(
        "https://carreraapp.000webhostapp.com/ranking.php",
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
      if (data.toString().contains("Nombre")) {
        final List<RankingUserDto> dtos = [];
        final stringData = data.toString();
        final list = stringData.split("|");
        for (final jsonString in list) {
          try {
            dtos.add(
              RankingUserDto.fromJson(
                jsonDecode(jsonString) as Map<String, dynamic>,
              ),
            );
          } on FormatException catch (_) {}
        }
        return dtos;
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
