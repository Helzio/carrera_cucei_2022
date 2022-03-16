import 'package:carrera_cucei_2022/features/registro/domain/failures/registro_failure.dart';
import 'package:carrera_cucei_2022/features/registro/infrastructure/repositories/registro_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'registro_notifier.freezed.dart';

@freezed
class RegistroState with _$RegistroState {
  const RegistroState._();
  const factory RegistroState({
    required String nombre,
    required String codigo,
    required String password,
    required String telefono,
    required String email,
    required String escuela,
    required String semestre,
    required bool loading,
    required Option<Either<RegistroFailure, Unit>> option,
  }) = _RegistroState;

  factory RegistroState.initial() => const RegistroState(
        nombre: "",
        codigo: "",
        password: "",
        telefono: "",
        email: "",
        escuela: "",
        semestre: "",
        loading: false,
        option: None(),
      );
}

class RegistroStateNotifier extends StateNotifier<RegistroState> {
  final RegistroRepository _repository;
  RegistroStateNotifier(this._repository) : super(RegistroState.initial());

  void reset(){
    state = RegistroState.initial();
  }

  void changeEmail(String email) {
    state = state.copyWith(email: email, option: none());
  }

  void changeNombre(String value) {
    state = state.copyWith(nombre: value, option: none());
  }

  void changeCodigo(String value) {
    state = state.copyWith(codigo: value, option: none());
  }

  void changeTelefono(String value) {
    state = state.copyWith(telefono: value, option: none());
  }

  void changeEscuela(String value) {
    state = state.copyWith(escuela: value, option: none());
  }

  void changeSemestre(String value) {
    state = state.copyWith(semestre: value, option: none());
  }

  void changePassword(String password) {
    state = state.copyWith(password: password, option: none());
  }

  Future<void> registrar() async {
    state = state.copyWith(loading: true, option: const None());
    final response = await _repository.registrar(
      nombre: state.nombre,
      codigo: state.codigo,
      password: state.password,
      telefono: state.telefono,
      email: state.email,
      escuela: state.escuela,
      semestre: state.semestre,
    );
    response.fold(
      (l) => state = state.copyWith(option: Some(left(l)), loading: false),
      (r) => state = state.copyWith(
        option: Some(right(r)),
        loading: false,
      ),
    );
  }
}
