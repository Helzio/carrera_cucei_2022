import 'package:carrera_cucei_2022/features/navigation/application/navigation_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationProvider =
    StateNotifierProvider<NavigationNotifier, NavigationState>((ref) {
  return NavigationNotifier();
});
