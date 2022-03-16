import 'package:carrera_cucei_2022/features/acore/database/providers/providers.dart';
import 'package:carrera_cucei_2022/features/acore/dio/providers/providers.dart';
import 'package:carrera_cucei_2022/features/login/application/api_login_notifier.dart';
import 'package:carrera_cucei_2022/features/login/application/login_notifier.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/local/login_local_service.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/remote/login_remote_service.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/repositories/login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier();
});

final loginRemoteProvider = Provider<LoginRemoteService>((ref) {
  return LoginRemoteService(ref.watch(dioProvider));
});

final loginLocalProvider = Provider<LoginLocal>((ref) {
  return LoginLocal(ref.watch(databaseProvider).instance);
});

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  return LoginRepository(
    ref.watch(loginRemoteProvider),
    ref.watch(loginLocalProvider),
  );
});

final apiloginProvider =
    StateNotifierProvider<ApiLoginStateNotifier, ApiLoginState>((ref) {
  return ApiLoginStateNotifier(ref.watch(loginRepositoryProvider));
});
