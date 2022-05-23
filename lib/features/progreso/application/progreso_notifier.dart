import 'package:carrera_cucei_2022/features/progreso/domain/failures/progreso_failure.dart';
import 'package:carrera_cucei_2022/features/progreso/infrastructure/repositories/progreso_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'progreso_notifier.freezed.dart';

@freezed
class ProgresoState with _$ProgresoState {
  const ProgresoState._();
  const factory ProgresoState.initial() = _Initial;
  const factory ProgresoState.loading() = _Loading;
  const factory ProgresoState.loaded() = _Loaded;
  const factory ProgresoState.failure(ProgresoFailure failure) = _Failure;
}

class ProgresoNotifier extends StateNotifier<ProgresoState> {
  final ProgresoRepository _repository;
  ProgresoNotifier(this._repository) : super(const ProgresoState.initial());

  Future<void> setProgreso({
    required String codigo,
    required int metros,
    required int segundos,
  }) async {
    state = const ProgresoState.loading();
    final response = await _repository.registrarProgreso(
      codigo: codigo,
      metros: metros,
      segundos: segundos,
    );
    state = response.fold(
      (l) => ProgresoState.failure(l),
      (r) => const ProgresoState.loaded(),
    );
  }
}
