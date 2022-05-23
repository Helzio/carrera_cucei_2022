import 'package:carrera_cucei_2022/features/corredor/providers/corredor_provider.dart';
import 'package:carrera_cucei_2022/features/ranking/providers/ranking_providers.dart';
import 'package:carrera_cucei_2022/features/rankingme/providers/rankingme_providers.dart';
import 'package:carrera_cucei_2022/features/running/provider/running_provider.dart';
import 'package:carrera_cucei_2022/presentation/acore/utils/colors_utils.dart';
import 'package:carrera_cucei_2022/presentation/map/map_page.dart';
import 'package:carrera_cucei_2022/presentation/progreso/widgets/running_progress.dart';
import 'package:carrera_cucei_2022/presentation/progreso/widgets/user_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProgresoPage extends ConsumerWidget {
  const ProgresoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final runningState = ref.watch(runningProvider);

    return Stack(
      children: [
        ShaderMask(
          blendMode: BlendMode.dstOut,
          shaderCallback: (Rect rect) => const LinearGradient(
            colors: [
              colorPrimary,
              colorPrimary,
              colorPrimary,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(rect),
          child: const Padding(
            padding: EdgeInsets.only(top: 160.0),
            child: MapPage(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                colorPrimary.withOpacity(.25),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, top: 24),
          child: AnimatedCrossFade(
            crossFadeState: runningState.when(
              initial: () => CrossFadeState.showFirst,
              stop: () => CrossFadeState.showSecond,
              running: () => CrossFadeState.showSecond,
            ),
            duration: const Duration(milliseconds: 1000),
            firstChild: const UserProgress(),
            secondChild: const RunningProgress(),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 48.0),
            child: SizedBox(
              height: 48,
              child: ElevatedButton.icon(
                onPressed: () {
                  runningState.when(
                    initial: () {
                      ref.read(runningProvider.notifier).setRunning();
                    },
                    running: () {
                      ref.read(runningProvider.notifier).setStop();
                    },
                    stop: () {
                      ref.read(rankingmeProvider.notifier).getRanking(
                            codigo: ref.read(corredorProvider).corredor.codigo,
                          );
                      ref.read(rankingProvider.notifier).getRanking();
                      ref.read(runningProvider.notifier).setInitial();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: colorPrimary,
                  shape: const StadiumBorder(),
                ),
                icon: runningState.when(
                  initial: () => const Icon(MdiIcons.run),
                  stop: () => const Icon(Icons.stacked_bar_chart),
                  running: () => const Icon(MdiIcons.stop),
                ),
                label: Text(
                  runningState.when(
                    initial: () => "Comenzar a correr",
                    stop: () => "Ver progreso",
                    running: () => "Finalizar carrera y guardar progreso",
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
