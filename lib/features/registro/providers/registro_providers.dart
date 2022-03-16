import 'package:carrera_cucei_2022/features/acore/dio/providers/providers.dart';
import 'package:carrera_cucei_2022/features/registro/application/registro_notifier.dart';
import 'package:carrera_cucei_2022/features/registro/infrastructure/remote/registro_remote_service.dart';
import 'package:carrera_cucei_2022/features/registro/infrastructure/repositories/registro_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registroRemoteProvider = Provider<RegistroRemoteService>((ref) {
  return RegistroRemoteService(ref.watch(dioProvider));
});

final registroRepositoryProvider = Provider<RegistroRepository>((ref) {
  return RegistroRepository(
    ref.watch(registroRemoteProvider),
  );
});

final registroProvider =
    StateNotifierProvider<RegistroStateNotifier, RegistroState>((ref) {
  return RegistroStateNotifier(ref.watch(registroRepositoryProvider));
});
