import 'package:carrera_cucei_2022/features/corredor/application/corredor_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final corredorProvider =
    StateNotifierProvider<CorredorNotifier, CorredorState>((ref) {
  return CorredorNotifier();
});
