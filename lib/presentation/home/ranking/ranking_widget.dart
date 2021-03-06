import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrera_cucei_2022/features/corredor/providers/corredor_provider.dart';
import 'package:carrera_cucei_2022/features/ranking/providers/ranking_providers.dart';
import 'package:carrera_cucei_2022/features/rankingme/providers/rankingme_providers.dart';
import 'package:carrera_cucei_2022/presentation/acore/utils/colors_utils.dart';
import 'package:carrera_cucei_2022/presentation/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RankingWidget extends ConsumerWidget {
  const RankingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rankingState = ref.watch(rankingProvider);

    return RefreshIndicator(
      color: colorPrimary,
      onRefresh: () async {
        ref.read(rankingProvider.notifier).getRanking();
        ref
            .read(rankingmeProvider.notifier)
            .getRanking(codigo: ref.read(corredorProvider).corredor.codigo);
      },
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: rankingState.when(
              initial: () => Container(),
              loading: () => Container(),
              loaded: (listaUsuarios) => Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    flex: 48,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 240,
                            top: 72,
                          ),
                          child: Column(
                            children: [
                              const Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_drop_up,
                                color: colorPrimary,
                                size: 40,
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 63,
                                    backgroundColor: colorPrimary,
                                  ),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: CachedNetworkImageProvider(
                                      listaUsuarios[1].foto,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                listaUsuarios[1].nombre,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "${(double.parse(listaUsuarios[1].distancia) / 1000).toStringAsFixed(2)} km",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: colorPrimary.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 240,
                            top: 72,
                          ),
                          child: Column(
                            children: [
                              const Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                size: 40,
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 63,
                                    backgroundColor: colorPrimary,
                                  ),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: CachedNetworkImageProvider(
                                      listaUsuarios[2].foto,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                listaUsuarios[2].nombre,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "${(double.parse(listaUsuarios[2].distancia) / 1000).toStringAsFixed(2)} km",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: colorPrimary.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            const Text(
                              "1",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              "assets/images/crown.png",
                              width: 48,
                              height: 48,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 84,
                                  backgroundColor: colorPrimary,
                                ),
                                CircleAvatar(
                                  radius: 80,
                                  backgroundImage: CachedNetworkImageProvider(
                                    listaUsuarios[0].foto,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              listaUsuarios[0].nombre,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "${(double.parse(listaUsuarios[0].distancia) / 1000).toStringAsFixed(2)} km",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: colorPrimary.withOpacity(.8),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    flex: 52,
                    child: ListView.builder(
                      itemCount: 7,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "${index + 4}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  getRandomIcon(),
                                ],
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Colors.white.withOpacity(.3),
                                  ),
                                  child: Row(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          const CircleAvatar(
                                            radius: 28,
                                            backgroundColor: colorPrimary,
                                          ),
                                          CircleAvatar(
                                            radius: 26,
                                            backgroundImage:
                                                CachedNetworkImageProvider(
                                              listaUsuarios[index + 3].foto,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Text(
                                          listaUsuarios[index + 3].nombre,
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "${(double.parse(listaUsuarios[index + 3].distancia) / 1000).toStringAsFixed(2)} km",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: colorPrimary.withOpacity(.8),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const RankingmeWidget(),
                ],
              ),
              failure: (f) => Container(),
            ),
          )
        ],
      ),
    );
  }
}

class RankingmeWidget extends ConsumerWidget {
  const RankingmeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final rankingmeState = ref.watch(rankingmeProvider);
    return Container(
      color: Colors.black.withOpacity(.7),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  rankingmeState.maybeWhen(
                    orElse: () => "0",
                    loaded: (user) => user.rank,
                  ),
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.arrow_drop_up,
                  color: colorPrimary,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.white.withOpacity(.3),
                ),
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundColor: colorPrimary,
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundImage: CachedNetworkImageProvider(
                            rankingmeState.maybeWhen(
                              orElse: () =>
                                  "https://scontent.fgdl10-1.fna.fbcdn.net/v/t39.30808-6/269982262_10209642748421076_5791888956522992241_n.jpg?_nc_cat=109&ccb=1-6&_nc_sid=09cbfe&_nc_eui2=AeHvYbd2S7kBtZQ_hMXZ8O4-PutGADEcY4Q-60YAMRxjhOa67O_0dd1c3NWrOn9CQac&_nc_ohc=DzqVbagSo1AAX_34f6H&_nc_pt=1&_nc_ht=scontent.fgdl10-1.fna&oh=00_AT_cmKUg9HW7qqkBUR6UMzT1gaU_zPeKuGMRKdcinlsgmg&oe=628ADFD3",
                              loaded: (user) => user.foto,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Text(
                        rankingmeState.maybeWhen(
                          orElse: () => "Cargando...",
                          loaded: (user) => user.nombre,
                          failure: (f) => "",
                        ),
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Text(
                      rankingmeState.maybeWhen(
                        orElse: () => "Cargando...",
                        loaded: (user) =>
                            "${(double.parse(user.distancia) / 1000).toStringAsFixed(2)} km",
                        failure: (f) => "",
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: colorPrimary.withOpacity(.8),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
