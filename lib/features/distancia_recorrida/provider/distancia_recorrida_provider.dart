import 'package:carrera_cucei_2022/features/distancia_recorrida/application/distancia_recorrida_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final distanciaRecorridaProvider =
    StateNotifierProvider<DistanciaRecorridaNotifier, DistanciaRecorridaState>(
        (ref) {
  return DistanciaRecorridaNotifier();
});
