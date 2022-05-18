// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RankingUserDto _$$_RankingUserDtoFromJson(Map<String, dynamic> json) =>
    _$_RankingUserDto(
      nombre: json['Nombre'] as String,
      distancia: json['Distancia'] as String,
      escuela: json['Escuela'] as String? ?? '',
      foto: json['Foto'] as String,
      tiempo: json['Tiempo'] as String? ?? '0',
      rank: json['rank'] as String? ?? '0',
    );

Map<String, dynamic> _$$_RankingUserDtoToJson(_$_RankingUserDto instance) =>
    <String, dynamic>{
      'Nombre': instance.nombre,
      'Distancia': instance.distancia,
      'Escuela': instance.escuela,
      'Foto': instance.foto,
      'Tiempo': instance.tiempo,
      'rank': instance.rank,
    };
