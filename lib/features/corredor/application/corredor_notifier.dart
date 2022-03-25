import 'package:carrera_cucei_2022/features/login/domain/entities/corredor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'corredor_notifier.freezed.dart';

@freezed
class CorredorState with _$CorredorState {
  const CorredorState._();
  const factory CorredorState({
    required Corredor corredor,
  }) = _CorredorState;

  factory CorredorState.initail() => const CorredorState(
        corredor: Corredor(
          id: -1,
          nombre: "",
          codigo: "",
          email: "",
          phone: "",
          escuela: "",
          semestre: "",
          password: "",
        ),
      );
}

class CorredorNotifier extends StateNotifier<CorredorState> {
  CorredorNotifier() : super(CorredorState.initail());

  void setCorredor(Corredor corredor){
    state = state.copyWith(corredor: corredor);
  }
}
