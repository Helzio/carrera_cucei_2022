import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrera_cucei_2022/features/corredor/providers/corredor_provider.dart';
import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:carrera_cucei_2022/features/navigation/provider/navigation_provider.dart';
import 'package:carrera_cucei_2022/presentation/acore/utils/colors_utils.dart';
import 'package:carrera_cucei_2022/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final corredor =
        ref.watch(corredorProvider.select((value) => value.corredor));
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: SizedBox(
          width: 300,
          child: Drawer(
            elevation: 0,
            backgroundColor: colorPrimary.withOpacity(.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Align(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 41,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: CachedNetworkImageProvider(
                              "https://scontent.fgdl1-3.fna.fbcdn.net/v/t1.18169-9/379401_1679270277172_722915003_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=174925&_nc_eui2=AeFGz7jCE3qBqWBYh94oil2Py6cq4mhI8IPLpyriaEjwgzM6orC0fiNbue8LKyBWEds&_nc_ohc=YU-D7hdLhigAX-PieOU&_nc_pt=1&_nc_ht=scontent.fgdl1-3.fna&oh=00_AT9z4CkFvpRlx5IRJnbvPl76rpzS1s0KjgsODm-cF_hLIg&oe=62645A72",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        corredor.nombre.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "CÓDIGO: ${corredor.codigo.toUpperCase()}",
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Navegación",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  selectedColor: Colors.white,
                  selectedTileColor: Colors.grey.withOpacity(.4),
                  selected: ref.watch(
                    navigationProvider.select((value) => value.page == 0),
                  ),
                  onTap: () {
                    ref.read(navigationProvider.notifier).setPage(0);
                    Scaffold.of(context).closeDrawer();
                  },
                  leading: SvgPicture.asset(
                    "assets/images/ic_podium.svg",
                    color: Colors.white,
                    height: 24,
                    width: 24,
                  ),
                  title: const Text("Ranking"),
                ),
                ListTile(
                  selectedColor: Colors.white,
                  selectedTileColor: Colors.grey.withOpacity(.4),
                  selected: ref.watch(
                    navigationProvider.select((value) => value.page == 1),
                  ),
                  onTap: () {
                    ref.read(navigationProvider.notifier).setPage(1);
                    Scaffold.of(context).closeDrawer();
                  },
                  leading: const Icon(
                    MdiIcons.map,
                  ),
                  title: const Text("Mapa"),
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Aplicación",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.help_outline,
                  ),
                  title: const Text("Ayuda"),
                ),
                const Divider(height: 32),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Cuenta",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  onTap: () async {
                    await ref.read(apiloginProvider.notifier).cerrarSesion();
                    ref.read(loginProvider.notifier).setInitial();
                    AutoRouter.of(context).pushAndPopUntil(
                      const LoginRoute(),
                      predicate: (_) => false,
                    );
                  },
                  leading: const Icon(
                    Icons.logout,
                  ),
                  title: const Text("Cerrar sesión"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
