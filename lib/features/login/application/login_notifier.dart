import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_notifier.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState.initial() = _Initial;
  const factory LoginState.showing() = _Showing;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.registro() = _Registro;
}

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(): super(const LoginState.initial());
  
  void setShowing() => state = const LoginState.showing();
  void setInitial() => state = const LoginState.initial();
  void setLoading() => state = const LoginState.loading();
  void setRegistro() => state = const LoginState.registro();
}
