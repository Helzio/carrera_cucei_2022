import 'package:freezed_annotation/freezed_annotation.dart';
part 'corredor.freezed.dart';

@freezed
class Corredor with _$Corredor {
  const Corredor._();
  const factory Corredor({
    required int id,
    required String nombre,
    required String codigo,
    required String email,
    required String phone,
    required String escuela,
    required String semestre,
    required String password,
  }) = _Corredor;
}
