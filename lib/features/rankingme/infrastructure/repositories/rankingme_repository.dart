import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/ranking/domain/entities/ranking_user.dart';
import 'package:carrera_cucei_2022/features/ranking/domain/failures/ranking_failure.dart';
import 'package:carrera_cucei_2022/features/rankingme/infrastructure/remote/rankingme_remote_service.dart';
import 'package:dartz/dartz.dart';

class RankingmeRepository {
  final RankingmeRemoteService _remote;

  RankingmeRepository(
    this._remote,
  );

  Future<Either<RankingFailure, RankingUser>> getRankingme({
    required String codigo,
  }) async {
    try {
      final dto = await _remote.getRankingme(codigo: codigo);
      return right(dto.toDomain());
    } on InternetException {
      return const Left(
        RankingFailure.internet(),
      );
    } on ServerException {
      return const Left(
        RankingFailure.server(),
      );
    } on SqlRegisterException {
      return const Left(
        RankingFailure.sqlRegister(),
      );
    } on UsuarioYaExisteException {
      return const Left(
        RankingFailure.usuarioYaExiste(),
      );
    } on SqlConectionException {
      return const Left(
        RankingFailure.sqlConection(),
      );
    }
  }
}
