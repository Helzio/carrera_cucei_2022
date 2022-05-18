import 'package:carrera_cucei_2022/features/ranking/domain/entities/ranking_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ranking_user_dto.freezed.dart';
part 'ranking_user_dto.g.dart';

@freezed
class RankingUserDto with _$RankingUserDto {
  const RankingUserDto._();
  const factory RankingUserDto({
    @JsonKey(name: 'Nombre') required String nombre,
    @JsonKey(name: 'Distancia') required String distancia,
    @JsonKey(name: 'Escuela', defaultValue: "") required String escuela,
    @JsonKey(name: 'Foto') required String foto,
    @JsonKey(name: 'Tiempo', defaultValue: "0") required String tiempo,
    @JsonKey(name: 'rank', defaultValue: "0") required String rank,
  }) = _RankingUserDto;

  factory RankingUserDto.fromJson(Map<String, dynamic> json) =>
      _$RankingUserDtoFromJson(json);

  factory RankingUserDto.fromDomain(RankingUser rankinguser) => RankingUserDto(
        nombre: rankinguser.nombre,
        distancia: rankinguser.distancia,
        foto: rankinguser.foto,
        rank: rankinguser.rank,
        escuela: rankinguser.escuela,
        tiempo: rankinguser.tiempo,
      );

  RankingUser toDomain() => RankingUser(
        nombre: nombre,
        distancia: distancia,
        foto: foto,
        rank: rank,
        escuela: escuela,
        tiempo: tiempo,
      );
}
