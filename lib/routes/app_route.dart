import 'package:auto_route/auto_route.dart';
import 'package:carrera_cucei_2022/presentation/home/home_page.dart';
import 'package:carrera_cucei_2022/presentation/login_page/login_page.dart';
import 'package:carrera_cucei_2022/presentation/registro/registro_page.dart';

@CustomAutoRouter(
  routes: <CustomRoute>[
    CustomRoute(
      page: LoginPage,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/login",
    ),
    CustomRoute(
      page: RegistroPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/registro",
      opaque: false,
    ),
    CustomRoute(
      page: HomePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      path: "/menu",
      opaque: false,
    ),
  ],
  replaceInRouteName: "Page,Route",
)
class $AppRouter {}
