import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/login/domain/entities/corredor.dart';
import 'package:carrera_cucei_2022/features/login/domain/failures/login_failure.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/local/login_local_service.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/remote/login_remote_service.dart';
import 'package:dartz/dartz.dart';

class LoginRepository {
  final LoginRemoteService _remote;
  final LoginLocal _local;

  LoginRepository(
    this._remote,
    this._local,
  );

  Future<Either<LoginFailure, Unit>> login({
    required String email,
    required String password,
  }) async {
    try {
      await _remote.login(email: email, password: password);
      return right(unit);
    } on InternetException {
      return const Left(
        LoginFailure.internet(),
      );
    } on ServerException {
      return const Left(
        LoginFailure.server(),
      );
    } on DatosInvalidosException {
      return const Left(
        LoginFailure.datosInvalidos(),
      );
    }
  }

  Future<Corredor?> getUser() {
    return _local.read();
  }

  Future<bool> isSignedIn() async {
    return await getUser() != null;
  }

  Future<bool> cerrarSesion() async {
    return _local.clear();
  }
}
