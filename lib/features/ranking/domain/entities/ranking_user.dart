import 'package:freezed_annotation/freezed_annotation.dart';
part 'ranking_user.freezed.dart';

@freezed
class RankingUser with _$RankingUser {
  const RankingUser._();
  const factory RankingUser({
    required String nombre,
    required String foto,
    required String distancia,
  }) = _RankingUser;
}
