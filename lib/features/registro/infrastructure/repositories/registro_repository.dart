import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/registro/domain/failures/registro_failure.dart';
import 'package:carrera_cucei_2022/features/registro/infrastructure/remote/registro_remote_service.dart';
import 'package:dartz/dartz.dart';

class RegistroRepository {
  final RegistroRemoteService _remote;

  RegistroRepository(
    this._remote,
  );

  Future<Either<RegistroFailure, Unit>> registrar({
    required String nombre,
    required String codigo,
    required String password,
    required String telefono,
    required String email,
    required String escuela,
    required String semestre,
  }) async {
    try {
      await _remote.registrar(
        nombre: nombre,
        codigo: codigo,
        password: password,
        telefono: telefono,
        email: email,
        escuela: escuela,
        semestre: semestre,
      );
      return right(unit);
    } on InternetException {
      return const Left(
        RegistroFailure.internet(),
      );
    } on ServerException {
      return const Left(
        RegistroFailure.server(),
      );
    } on SqlRegisterException {
      return const Left(
        RegistroFailure.sqlRegister(),
      );
    } on UsuarioYaExisteException {
      return const Left(
        RegistroFailure.usuarioYaExiste(),
      );
    } on SqlConectionException {
      return const Left(
        RegistroFailure.sqlConection(),
      );
    }
  }
}
