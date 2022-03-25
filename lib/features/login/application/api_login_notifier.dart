import 'package:carrera_cucei_2022/features/login/domain/entities/corredor.dart';
import 'package:carrera_cucei_2022/features/login/domain/failures/login_failure.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_login_notifier.freezed.dart';

@freezed
class ApiLoginState with _$ApiLoginState {
  const ApiLoginState._();
  const factory ApiLoginState({
    required String email,
    required String password,
    required bool loading,
    required Option<Either<LoginFailure, Corredor>> option,
  }) = _ApiLoginState;

  factory ApiLoginState.initial() => const ApiLoginState(
        email: "",
        password: "",
        loading: false,
        option: None(),
      );
}

class ApiLoginStateNotifier extends StateNotifier<ApiLoginState> {
  final LoginRepository _repository;
  ApiLoginStateNotifier(this._repository) : super(ApiLoginState.initial());

  void changeEmail(String email) {
    state = state.copyWith(email: email, option: none());
  }

  void changePassword(String password) {
    state = state.copyWith(password: password, option: none());
  }

  Future<void> cerrarSesion() async {
    state = ApiLoginState.initial();
    await _repository.cerrarSesion();
  }

  Future<void> login() async {
    state = state.copyWith(loading: true, option: const None());
    final response = await _repository.login(
      email: state.email,
      password: state.password,
    );
    response.fold(
      (l) => state = state.copyWith(option: Some(left(l)), loading: false),
      (r) => state = state.copyWith(
        option: Some(right(r)),
      ),
    );
  }
}
