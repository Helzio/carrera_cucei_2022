import 'package:carrera_cucei_2022/features/running/application/running_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final runningProvider =
    StateNotifierProvider<RunningNotifier, RunningState>((ref) {
  return RunningNotifier();
});
