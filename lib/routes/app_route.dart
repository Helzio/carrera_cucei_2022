import 'package:auto_route/auto_route.dart';
import 'package:tarea/presentation/login_page/login_page.dart';
import 'package:tarea/presentation/registro/registro_page.dart';

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
  ],
  replaceInRouteName: "Page,Route",
)
class $AppRouter {}
