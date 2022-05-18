import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrera_cucei_2022/features/rankingme/providers/rankingme_providers.dart';
import 'package:carrera_cucei_2022/presentation/acore/utils/colors_utils.dart';
import 'package:carrera_cucei_2022/presentation/map/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProgresoPage extends ConsumerWidget {
  const ProgresoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meState = ref.watch(rankingmeProvider);
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
          child: Stack(
            children: [
              const MapPage(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 48.0),
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: colorPrimary,
                        shape: const StadiumBorder(),
                      ),
                      icon: const Icon(MdiIcons.run),
                      label: const Text("Comenzar a correr"),
                    ),
                  ),
                ),
              )
            ],
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 181,
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
                                loaded: (user) => user.foto,
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
                            "Ranking",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: meState.maybeWhen(
                                orElse: () => "Cargando...",
                                loaded: (user) => user.rank,
                                failure: (f) => "",
                              ),
                              style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: colorPrimary,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Divider(
                            color: Colors.white70,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
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
                            height: 8,
                          ),
                          const Divider(
                            color: Colors.white70,
                          ),
                          const SizedBox(
                            height: 8,
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
                                    (double.parse(user.tiempo) / 60)
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
              Text(
                meState.maybeWhen(
                  orElse: () => "Cargando...",
                  loaded: (user) => user.escuela.toUpperCase(),
                  failure: (f) => "",
                ),
                style: const TextStyle(
                  fontSize: 16,
                  color: colorPrimary,
                ),
              ),
              Text(
                meState.maybeWhen(
                  orElse: () => "Cargando...",
                  loaded: (user) => user.nombre,
                  failure: (f) => "",
                ),
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 16,
                  ),
                ],
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
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
