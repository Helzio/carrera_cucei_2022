import 'package:carrera_cucei_2022/features/login/domain/entities/corredor.dart';
import 'package:carrera_cucei_2022/features/login/domain/failures/login_failure.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/repositories/login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.notLogged() = _NotLogged;
  const factory AuthState.logged(Corredor user) = _Logged;
  const factory AuthState.failure(LoginFailure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final LoginRepository _loginRepository;
  AuthNotifier(this._loginRepository) : super(const AuthState.initial());

  Future<void> checkAndUpdateLoginStatus() async {
    state = (await _loginRepository.isSignedIn())
        ? AuthState.logged((await _loginRepository.getUser())!)
        : const AuthState.notLogged();
  }
}
