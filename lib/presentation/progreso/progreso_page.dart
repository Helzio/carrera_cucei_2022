import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrera_cucei_2022/features/rankingme/providers/rankingme_providers.dart';
import 'package:carrera_cucei_2022/presentation/acore/utils/colors_utils.dart';
import 'package:carrera_cucei_2022/presentation/map/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProgresoPage extends ConsumerWidget {
  const ProgresoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meState = ref.watch(rankingmeProvider);
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            height: 156,
            child: Row(
              children: [
                Expanded(
                  flex: 25,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 72,
                        backgroundImage: CachedNetworkImageProvider(
                          meState.maybeWhen(
                            orElse: () =>
                                "https://scontent.fgdl10-1.fna.fbcdn.net/v/t39.30808-6/269982262_10209642748421076_5791888956522992241_n.jpg?_nc_cat=109&ccb=1-6&_nc_sid=09cbfe&_nc_eui2=AeHvYbd2S7kBtZQ_hMXZ8O4-PutGADEcY4Q-60YAMRxjhOa67O_0dd1c3NWrOn9CQac&_nc_ohc=DzqVbagSo1AAX_34f6H&_nc_pt=1&_nc_ht=scontent.fgdl10-1.fna&oh=00_AT_cmKUg9HW7qqkBUR6UMzT1gaU_zPeKuGMRKdcinlsgmg&oe=628ADFD3",
                            loaded: (user) =>
                                "https://scontent.fgdl10-1.fna.fbcdn.net/v/t39.30808-6/269982262_10209642748421076_5791888956522992241_n.jpg?_nc_cat=109&ccb=1-6&_nc_sid=09cbfe&_nc_eui2=AeHvYbd2S7kBtZQ_hMXZ8O4-PutGADEcY4Q-60YAMRxjhOa67O_0dd1c3NWrOn9CQac&_nc_ohc=DzqVbagSo1AAX_34f6H&_nc_pt=1&_nc_ht=scontent.fgdl10-1.fna&oh=00_AT_cmKUg9HW7qqkBUR6UMzT1gaU_zPeKuGMRKdcinlsgmg&oe=628ADFD3",
                            failure: (f) => "",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 156,
                        height: 156,
                        child: CircularProgressIndicator(
                          backgroundColor: colorPrimary.withOpacity(.2),
                          color: colorPrimary,
                          value: meState.maybeWhen(
                            orElse: () => 0,
                            loaded: (user) =>
                                double.parse(user.distancia) / 5000,
                            failure: (f) => 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(),
                ),
                const VerticalDivider(
                  color: Colors.white70,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  flex: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Distancia",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: meState.maybeWhen(
                            orElse: () => "Cargando...",
                            loaded: (user) =>
                                (double.parse(user.distancia) / 1000)
                                    .toStringAsFixed(2),
                            failure: (f) => "",
                          ),
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: colorPrimary,
                          ),
                          children: const [
                            TextSpan(
                              text: " km",
                              style: TextStyle(
                                fontSize: 16,
                                color: colorPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(
                        color: Colors.white70,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Tiempo",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: meState.maybeWhen(
                            orElse: () => "Cargando...",
                            loaded: (user) =>
                                (double.parse(user.distancia) / 1000)
                                    .toStringAsFixed(2),
                            failure: (f) => "",
                          ),
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: colorPrimary,
                          ),
                          children: const [
                            TextSpan(
                              text: " h",
                              style: TextStyle(
                                fontSize: 16,
                                color: colorPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              meState.maybeWhen(
                orElse: () => "Cargando...",
                loaded: (user) => user.nombre,
                failure: (f) => "",
              ),
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: Colors.white70,
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: const MapPage(),
            ),
          ),
        ],
      ),
    );
  }
}
