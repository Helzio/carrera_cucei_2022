import 'package:carrera_cucei_2022/features/acore/dio/domain/exceptions/exceptions.dart';
import 'package:carrera_cucei_2022/features/ranking/domain/entities/ranking_user.dart';
import 'package:carrera_cucei_2022/features/ranking/domain/failures/ranking_failure.dart';
import 'package:carrera_cucei_2022/features/ranking/infrastructure/remote/ranking_remote_service.dart';
import 'package:dartz/dartz.dart';

class RankingRepository {
  final RankingRemoteService _remote;

  RankingRepository(
    this._remote,
  );

  Future<Either<RankingFailure, List<RankingUser>>> getRanking() async {
    try {
      final dtos = await _remote.getRanking();
      return right(dtos.map((e) => e.toDomain()).toList());
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
