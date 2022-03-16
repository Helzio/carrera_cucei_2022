import 'package:freezed_annotation/freezed_annotation.dart';
part 'registro_failure.freezed.dart';

@freezed
class RegistroFailure with _$RegistroFailure {
  const RegistroFailure._();
  const factory RegistroFailure.internet() = _Internet;
  const factory RegistroFailure.server() = _Server;
  const factory RegistroFailure.usuarioYaExiste() = _UsuarioYaExiste;
  const factory RegistroFailure.sqlConection() = _SqlConection;
  const factory RegistroFailure.sqlRegister() = _SqlRegister;
}
