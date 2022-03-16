// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corredor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CorredorDto _$$_CorredorDtoFromJson(Map<String, dynamic> json) =>
    _$_CorredorDto(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      codigo: json['codigo'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      escuela: json['escuela'] as String,
      semestre: json['semestre'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_CorredorDtoToJson(_$_CorredorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'codigo': instance.codigo,
      'email': instance.email,
      'phone': instance.phone,
      'escuela': instance.escuela,
      'semestre': instance.semestre,
      'password': instance.password,
    };
