import 'dart:math';

import 'package:carrera_cucei_2022/features/corredor/providers/corredor_provider.dart';
import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:carrera_cucei_2022/features/navigation/application/navigation_notifier.dart';
import 'package:carrera_cucei_2022/features/navigation/provider/navigation_provider.dart';
import 'package:carrera_cucei_2022/features/ranking/providers/ranking_providers.dart';
import 'package:carrera_cucei_2022/features/rankingme/providers/rankingme_providers.dart';
import 'package:carrera_cucei_2022/presentation/acore/utils/colors_utils.dart';
import 'package:carrera_cucei_2022/presentation/home/drawer/app_drawer.dart';
import 'package:carrera_cucei_2022/presentation/home/ranking/ranking_widget.dart';
import 'package:carrera_cucei_2022/presentation/map/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CorredorDummy {
  final String nombre;
  final String imagen;

  CorredorDummy(this.nombre, this.imagen);
}

final mockCorredores = [
  CorredorDummy(
    "Josefina Aranzazu",
    "https://scontent.fgdl1-4.fna.fbcdn.net/v/t39.30808-6/220080503_10216983007802014_5113677550245091011_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGZZ-OqP6z9mwLsD2hXSKsflKx1SjwA6FqUrHVKPADoWr9kJ1ld8f7Ytedja9sr7Hs&_nc_ohc=4qkUVMOimU0AX8cZC6N&tn=HJuXTMQKa1IHW6YL&_nc_pt=1&_nc_ht=scontent.fgdl1-4.fna&oh=00_AT_iCu8EfQvG0yCnJzcE608LojPheoO2W35_RuzrHjSO7Q&oe=62420128",
  ),
  CorredorDummy(
    "Cesar Feria",
    "https://scontent.fgdl1-4.fna.fbcdn.net/v/t39.30808-6/273394916_1254056144997945_1778979585354147567_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeG_lcT2PsKUqYEfRdbnlZK_pmtnZA7RBO2ma2dkDtEE7UZAf-LP6idEnzU6FWtYn2k&_nc_ohc=r_n_S_aYnFAAX_ZpFnE&_nc_pt=1&_nc_ht=scontent.fgdl1-4.fna&oh=00_AT8IJaa-JgTCqpXdWVQzUVqO2jG5MVG9CtSXyRcAfK81zg&oe=6241C4B3",
  ),
  CorredorDummy(
    "Esmeralda Romero",
    "https://scontent.fgdl1-3.fna.fbcdn.net/v/t1.6435-9/104864052_2337270339908445_285410710502258504_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=174925&_nc_eui2=AeEVprNKxoL_wntuG1DPH9rNm8fRPsLDrRybx9E-wsOtHJ27UkdvDzDcOg-emnbcDeY&_nc_ohc=Ke3Unz0747kAX-8sqG4&_nc_pt=1&_nc_ht=scontent.fgdl1-3.fna&oh=00_AT_TMoubInsPQUi8W0hyCk3IhXIQ0XRSjWJpUwk6m1Q3hw&oe=6263F3A5",
  ),
  CorredorDummy(
    "Danna Medina",
    "https://scontent.fgdl1-4.fna.fbcdn.net/v/t1.6435-9/71186433_1692147810920584_5431194932742193152_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHmdE_w65m-8EdRyQcf8rv95Eb5Q_-Ue1zkRvlD_5R7XJxJ6ONMhQ1fRvRmk-d1ZvE&_nc_ohc=jNWObiim5TgAX8nTFi_&_nc_pt=1&_nc_ht=scontent.fgdl1-4.fna&oh=00_AT8kguzL7Ui9CY2au11nqn4UU-w7eKKpE5ssOiQnv2JT2w&oe=6262E330",
  ),
  CorredorDummy(
    "Victor Alejandro",
    "https://scontent.fgdl1-3.fna.fbcdn.net/v/t1.6435-9/186923585_4207744745977099_1664419902806125260_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFfRiAiBS-DS4_Opbc2A4BG1pXxEuYkKYHWlfES5iQpgQJiBivgWKAP8m978kS8BiU&_nc_ohc=htQSkD4HfgcAX9sZIi4&_nc_pt=1&_nc_ht=scontent.fgdl1-3.fna&oh=00_AT-KoCdugmnVYb7k6SLxwFUp-3Z6cqQQEFI_jSJ0XFIqrw&oe=6264FA9C",
  ),
  CorredorDummy(
    "Ivan Marquez",
    "https://scontent.fgdl1-4.fna.fbcdn.net/v/t1.18169-9/998127_382989755144592_1950354101_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFrQzM3Q7dtbMrLE91KOTb-ez4VVkZTz-B7PhVWRlPP4KUVRlyx_w0wFTkRPYX0AyA&_nc_ohc=_inTkcdXHVkAX8N3UBK&_nc_pt=1&_nc_ht=scontent.fgdl1-4.fna&oh=00_AT_hb99d8q2ZioXmcNzv34EnRAjtzsNc1N18YcpzgYIs6Q&oe=6261CB9F",
  ),
  CorredorDummy(
    "Jesús Tapia",
    "https://scontent.fgdl1-3.fna.fbcdn.net/v/t1.6435-9/207762110_1817245695150232_8553194798374705540_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGYJUQGDCMl_pz6d-c2jHTkQVQ8zAXuNQJBVDzMBe41AsHXNaeFNBUzitw3WicZcLE&_nc_ohc=fIOKTUWxEn4AX9DvfIC&_nc_pt=1&_nc_ht=scontent.fgdl1-3.fna&oh=00_AT8HjWc0_SqZXqVjCxq8WnlHLcM_LBAZWn8wTmTZPyX3LQ&oe=62621539",
  ),
];

final mockDistance = [
  "6.03 km",
  "5.77 km",
  "5.31 km",
  "4.97 km",
  "4.13 km",
  "3.69 km",
  "3.03 km",
];

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(rankingProvider.notifier).getRanking();
      ref
          .read(rankingmeProvider.notifier)
          .getRanking(codigo: ref.read(corredorProvider).corredor.codigo);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<NavigationState>(navigationProvider, (previous, next) {
      print(next.page);
      _controller.animateToPage(
        next.page,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    });

    //mockCorredores.shuffle();
    return WillPopScope(
      onWillPop: () {
        ref.read(loginProvider.notifier).setShowing();
        return Future.value(true);
      },
      child: Stack(
        children: [
          Image.asset(
            "assets/images/fondo2.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            color: Colors.black.withOpacity(.7),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  colorPrimary.withOpacity(.5),
                ],
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const AppbarTitle(),
            ),
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: const [
                RankingWidget(),
                MapPage(),
              ],
            ),
            drawer: const AppDrawer(),
          ),
        ],
      ),
    );
  }
}

class AppbarTitle extends ConsumerWidget {
  const AppbarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      ref.watch(navigationProvider.select((value) => value.page)) == 0
          ? "Ranking"
          : "Mapa",
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

Icon getRandomIcon() {
  final random = Random();
  final int = random.nextInt(3);
  switch (int) {
    case 0:
      return const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
        size: 30,
      );
    case 1:
      return const Icon(
        Icons.arrow_drop_up_outlined,
        color: colorPrimary,
        size: 30,
      );
    default:
      return const Icon(
        Icons.remove,
        color: Colors.white,
        size: 30,
      );
  }
}
