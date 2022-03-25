import 'package:carrera_cucei_2022/features/login/domain/entities/corredor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'corredor_dto.freezed.dart';
part 'corredor_dto.g.dart';

int idFromJson(Object object) {
  if (object is int) {
    return object;
  }
  return int.tryParse(object as String) ?? -1;
}

@freezed
class CorredorDto with _$CorredorDto {
  const CorredorDto._();
  const factory CorredorDto({
    @JsonKey(fromJson: idFromJson) required int id,
    @JsonKey(name: "Nombre") required String nombre,
    @JsonKey(name: "Codigo") required String codigo,
    @JsonKey(name: "Correo") required String email,
    @JsonKey(name: "Telefono") required String phone,
    @JsonKey(name: "Escuela") required String escuela,
    @JsonKey(name: "Semestre") required String semestre,
    @JsonKey(name: "Password") required String password,
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
