import 'package:freezed_annotation/freezed_annotation.dart';
part 'ranking_failure.freezed.dart';

@freezed
class RankingFailure with _$RankingFailure {
  const RankingFailure._();
  const factory RankingFailure.internet() = _Internet;
  const factory RankingFailure.server() = _Server;
  const factory RankingFailure.usuarioYaExiste() = _UsuarioYaExiste;
  const factory RankingFailure.sqlConection() = _SqlConection;
  const factory RankingFailure.sqlRegister() = _SqlRegister;
}
