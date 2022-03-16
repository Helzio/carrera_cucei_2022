import 'package:carrera_cucei_2022/app_widget.dart';
import 'package:carrera_cucei_2022/features/acore/database/infrastructure/database.dart';
import 'package:carrera_cucei_2022/features/acore/database/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
    overlays: [],
  );

  final database = Database();
  await database.init();
  runApp(
    ProviderScope(
      overrides: [
        databaseProvider.overrideWithValue(database),
      ],
      child: AppWidget(),
    ),
  );
}
