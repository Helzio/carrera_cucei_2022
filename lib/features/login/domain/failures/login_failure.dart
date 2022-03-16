import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_failure.freezed.dart';

@freezed
class LoginFailure with _$LoginFailure {
  const LoginFailure._();
  const factory LoginFailure.internet() = _Internet;
  const factory LoginFailure.server() = _Server;
  const factory LoginFailure.datosInvalidos() = _DatosInvalidos;
}
