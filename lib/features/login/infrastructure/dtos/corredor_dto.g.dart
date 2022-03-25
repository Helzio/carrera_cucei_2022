// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corredor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CorredorDto _$$_CorredorDtoFromJson(Map<String, dynamic> json) =>
    _$_CorredorDto(
      id: idFromJson(json['id'] as Object),
      nombre: json['Nombre'] as String,
      codigo: json['Codigo'] as String,
      email: json['Correo'] as String,
      phone: json['Telefono'] as String,
      escuela: json['Escuela'] as String,
      semestre: json['Semestre'] as String,
      password: json['Password'] as String,
    );

Map<String, dynamic> _$$_CorredorDtoToJson(_$_CorredorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Nombre': instance.nombre,
      'Codigo': instance.codigo,
      'Correo': instance.email,
      'Telefono': instance.phone,
      'Escuela': instance.escuela,
      'Semestre': instance.semestre,
      'Password': instance.password,
    };
