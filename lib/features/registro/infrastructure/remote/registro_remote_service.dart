import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/acore/dio/infrastructure/extensions/extension.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RegistroRemoteService {
  final Dio _dio;

  RegistroRemoteService(this._dio);

  Future<Unit> registrar({
    required String nombre,
    required String codigo,
    required String password,
    required String telefono,
    required String email,
    required String escuela,
    required String semestre,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        "https://carreraapp.000webhostapp.com/registro.php?name=$nombre&code=$codigo&pass=$password&tel=$telefono&mail=$email&school=$escuela&semester=$semestre",
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
      if (data == "Usuario registrado") {
        return unit;
      } else if ((data as String)
          .contains("Ha ocurrido un problema al registrar el usuario")) {
        throw SqlRegisterException();
      } else if (data == "Usuario ya existe") {
        throw UsuarioYaExisteException();
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
