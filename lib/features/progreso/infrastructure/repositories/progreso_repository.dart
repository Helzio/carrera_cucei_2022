import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/progreso/domain/failures/progreso_failure.dart';
import 'package:carrera_cucei_2022/features/progreso/infrastructure/remote/progreso_remote_service.dart';
import 'package:dartz/dartz.dart';

class ProgresoRepository {
  final ProgresoRemoteService _remote;

  ProgresoRepository(
    this._remote,
  );

  Future<Either<ProgresoFailure, Unit>> registrarProgreso({
    required String codigo,
    required int metros,
    required int segundos,
  }) async {
    try {
      await _remote.registrarProgreso(
        codigo: codigo,
        metros: metros,
        segundos: segundos,
      );
      return right(unit);
    } on InternetException {
      return const Left(
        ProgresoFailure.internet(),
      );
    } on ServerException {
      return const Left(
        ProgresoFailure.server(),
      );
    } on SqlRegisterException {
      return const Left(
        ProgresoFailure.sqlRegister(),
      );
    } on UsuarioYaExisteException {
      return const Left(
        ProgresoFailure.usuarioYaExiste(),
      );
    } on SqlConectionException {
      return const Left(
        ProgresoFailure.sqlConection(),
      );
    }
  }
}
