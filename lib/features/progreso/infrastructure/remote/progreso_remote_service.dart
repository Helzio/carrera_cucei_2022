import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/acore/dio/infrastructure/extensions/extension.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ProgresoRemoteService {
  final Dio _dio;

  ProgresoRemoteService(this._dio);

  Future<Unit> registrarProgreso({
    required String codigo,
    required int metros,
    required int segundos,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        "https://carreraapp.000webhostapp.com/progreso.php?codigo=$codigo&metros=$metros&segundos=$segundos",
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
      if (data == "200") {
        return unit;
      } else {
        throw ServerException();
      }
    } else {
      throw ServerException();
    }
  }
}
