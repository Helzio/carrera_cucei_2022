import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'distancia_recorrida_notifier.freezed.dart';

@freezed
class DistanciaRecorridaState with _$DistanciaRecorridaState {
  const DistanciaRecorridaState._();
  const factory DistanciaRecorridaState({required double metros}) =
      _DistanciaRecorridaState;
}

class DistanciaRecorridaNotifier
    extends StateNotifier<DistanciaRecorridaState> {
  DistanciaRecorridaNotifier()
      : super(const DistanciaRecorridaState(metros: 0));

  void setDistancia(double metros) {
    state = state.copyWith(metros: metros);
  }
  
}
