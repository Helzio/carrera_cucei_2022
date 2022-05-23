import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrera_cucei_2022/features/ranking/domain/entities/ranking_user.dart';
import 'package:carrera_cucei_2022/features/rankingme/providers/rankingme_providers.dart';
import 'package:carrera_cucei_2022/presentation/acore/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProgress extends ConsumerStatefulWidget {
  const UserProgress({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<UserProgress> createState() => _UserProgressState();
}

class _UserProgressState extends ConsumerState<UserProgress> {
  RankingUser? cacheUser;

  @override
  Widget build(BuildContext context) {
    final meState = ref.watch(rankingmeProvider);
    return Column(
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
                          orElse: () => cacheUser == null
                              ? "https://carreraapp.000webhostapp.com/imagenes/userDefault.png"
                              : cacheUser!.foto,
                          loaded: (user) {
                            cacheUser = user;
                            return user.foto;
                          },
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
                          orElse: () => cacheUser == null
                              ? double.parse(cacheUser!.distancia) / 5000
                              : 0,
                          loaded: (user) => double.parse(user.distancia) / 5000,
                          failure: (f) => 0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FloatingActionButton.small(
                          backgroundColor: colorPrimary,
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            showAboutDialog(context: context);
                          },
                        ),
                      ),
                    ),
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
                          orElse: () =>
                              cacheUser == null ? cacheUser!.rank : " ",
                          loaded: (user) => user.rank,
                          failure: (f) => " ",
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
                          orElse: () => cacheUser == null
                              ? (double.parse(cacheUser!.distancia) / 1000)
                                  .toStringAsFixed(2)
                              : "0",
                          loaded: (user) =>
                              (double.parse(user.distancia) / 1000)
                                  .toStringAsFixed(2),
                          failure: (f) => "X",
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
                          orElse: () => cacheUser == null
                              ? (double.parse(cacheUser!.tiempo) / 60)
                                  .toStringAsFixed(2)
                              : "0",
                          loaded: (user) => (double.parse(user.tiempo) / 60)
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
                            text: " m",
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
            orElse: () => cacheUser == null
                ? cacheUser!.escuela.toUpperCase()
                : "Cargando...",
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
            orElse: () => cacheUser == null ? cacheUser!.nombre : "Cargando...",
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
    );
  }
}
