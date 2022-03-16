import 'package:carrera_cucei_2022/features/login/domain/entities/corredor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'corredor_dto.freezed.dart';
part 'corredor_dto.g.dart';

@freezed
class CorredorDto with _$CorredorDto {
  const CorredorDto._();
  const factory CorredorDto({
    required int id,
    required String nombre,
    required String codigo,
    required String email,
    required String phone,
    required String escuela,
    required String semestre,
    required String password,
  }) = _CorredorDto;

  factory CorredorDto.fromDomain(Corredor corredor) => CorredorDto(
        id: corredor.id,
        nombre: corredor.nombre,
        codigo: corredor.codigo,
        email: corredor.email,
        phone: corredor.phone,
        escuela: corredor.escuela,
        semestre: corredor.semestre,
        password: corredor.password,
      );

  Corredor toDomain() => Corredor(
        id: id,
        nombre: nombre,
        codigo: codigo,
        email: email,
        phone: phone,
        escuela: escuela,
        semestre: semestre,
        password: password,
      );

  factory CorredorDto.fromJson(Map<String, dynamic> json) =>
      _$CorredorDtoFromJson(json);
}
