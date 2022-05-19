import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'running_state.freezed.dart';

@freezed
class RunningState with _$RunningState {
  const RunningState._();
  const factory RunningState.initial() = _RunningStateInitial;
  const factory RunningState.stop() = _RunningStateStop;
  const factory RunningState.running() = _RunningStateRunning;
}

class RunningNotifier extends StateNotifier<RunningState> {
  RunningNotifier() : super(const RunningState.initial());

  void setRunning() {
    state = const RunningState.running();
  }

  void setStop() {
    state = const RunningState.stop();
  }

  void setInitial() {
    state = const RunningState.initial();
  }
}
