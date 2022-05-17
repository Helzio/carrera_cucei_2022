import 'package:carrera_cucei_2022/features/acore/dio/providers/providers.dart';
import 'package:carrera_cucei_2022/features/rankingme/application/rankingme_notifier.dart';
import 'package:carrera_cucei_2022/features/rankingme/infrastructure/remote/rankingme_remote_service.dart';
import 'package:carrera_cucei_2022/features/rankingme/infrastructure/repositories/rankingme_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rankingmeRemoteProvider = Provider<RankingmeRemoteService>((ref) {
  return RankingmeRemoteService(ref.watch(dioProvider));
});

final rankingmeRepositoryProvider = Provider<RankingmeRepository>((ref) {
  return RankingmeRepository(
    ref.watch(rankingmeRemoteProvider),
  );
});

final rankingmeProvider =
    StateNotifierProvider<RankingmeStateNotifier, RankingmeState>(
        (ref) {
  return RankingmeStateNotifier(ref.watch(rankingmeRepositoryProvider));
});
