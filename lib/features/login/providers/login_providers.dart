import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tarea/features/login/application/login_notifier.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier();
});
