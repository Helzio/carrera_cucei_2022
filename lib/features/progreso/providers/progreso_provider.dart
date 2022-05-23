import 'package:carrera_cucei_2022/features/acore/dio/providers/providers.dart';
import 'package:carrera_cucei_2022/features/progreso/application/progreso_notifier.dart';
import 'package:carrera_cucei_2022/features/progreso/infrastructure/remote/progreso_remote_service.dart';
import 'package:carrera_cucei_2022/features/progreso/infrastructure/repositories/progreso_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final progresoRemoteProvider = Provider<ProgresoRemoteService>((ref) {
  return ProgresoRemoteService(ref.watch(dioProvider));
});

final progresoRepositoryProvider = Provider<ProgresoRepository>((ref) {
  return ProgresoRepository(ref.watch(progresoRemoteProvider));
});

final progresoProvider =
    StateNotifierProvider<ProgresoNotifier, ProgresoState>((ref) {
  return ProgresoNotifier(ref.watch(progresoRepositoryProvider));
});
