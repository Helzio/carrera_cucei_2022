import 'package:carrera_cucei_2022/features/corredor/providers/corredor_provider.dart';
import 'package:carrera_cucei_2022/features/distancia_recorrida/provider/distancia_recorrida_provider.dart';
import 'package:carrera_cucei_2022/features/progreso/providers/progreso_provider.dart';
import 'package:carrera_cucei_2022/features/rankingme/providers/rankingme_providers.dart';
import 'package:carrera_cucei_2022/features/running/application/running_state.dart';
import 'package:carrera_cucei_2022/features/running/provider/running_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class RunningProgress extends ConsumerStatefulWidget {
  const RunningProgress({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<RunningProgress> createState() => _RunningProgressState();
}

class _RunningProgressState extends ConsumerState<RunningProgress> {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  int segundos = 0;

  @override
  Future<void> dispose() async {
    await _stopWatchTimer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<RunningState>(runningProvider, (previous, next) {
      next.when(
        initial: () => _stopWatchTimer.onExecute.add(StopWatchExecute.reset),
        stop: () {
          _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
          ref.watch(progresoProvider.notifier).setProgreso(
                codigo: ref.read(corredorProvider).corredor.codigo,
                metros:
                    (ref.read(distanciaRecorridaProvider).metros * 1000).toInt(),
                segundos: segundos,
              );
        },
        running: () => _stopWatchTimer.onExecute.add(StopWatchExecute.start),
      );
    });

    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: StreamBuilder<int>(
            stream: _stopWatchTimer.rawTime,
            initialData: 0,
            builder: (context, snap) {
              final value = snap.data;
              final displayTime = StopWatchTimer.getDisplayTime(value!);
              segundos = StopWatchTimer.getRawSecond(value);
              return Column(
                children: <Widget>[
                  const Text(
                    "Tiempo",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      displayTime,
                      style: const TextStyle(
                        fontSize: 40,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          color: Colors.white70,
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          "Distancia",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: TextoDistanciaRecorrida(),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

class TextoDistanciaRecorrida extends ConsumerWidget {
  const TextoDistanciaRecorrida({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kilometrosRecorridos = ref.watch(
      distanciaRecorridaProvider.select((value) => value.metros),
    );
    return Text(
      "${kilometrosRecorridos.toStringAsFixed(2)} km",
      style: const TextStyle(
        fontSize: 40,
        fontFamily: 'Helvetica',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
