import 'package:freezed_annotation/freezed_annotation.dart';
part 'progreso_failure.freezed.dart';

@freezed
class ProgresoFailure with _$ProgresoFailure {
  const ProgresoFailure._();
  const factory ProgresoFailure.internet() = _Internet;
  const factory ProgresoFailure.server() = _Server;
  const factory ProgresoFailure.usuarioYaExiste() = _UsuarioYaExiste;
  const factory ProgresoFailure.sqlConection() = _SqlConection;
  const factory ProgresoFailure.sqlRegister() = _SqlRegister;
}
