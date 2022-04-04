import 'package:carrera_cucei_2022/features/acore/dio/providers/providers.dart';
import 'package:carrera_cucei_2022/features/ranking/application/ranking_notifier.dart';
import 'package:carrera_cucei_2022/features/ranking/infrastructure/remote/ranking_remote_service.dart';
import 'package:carrera_cucei_2022/features/ranking/infrastructure/repositories/ranking_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rankingRemoteProvider = Provider<RankingRemoteService>((ref) {
  return RankingRemoteService(ref.watch(dioProvider));
});

final rankingRepositoryProvider = Provider<RankingRepository>((ref) {
  return RankingRepository(
    ref.watch(rankingRemoteProvider),
  );
});

final rankingProvider =
    StateNotifierProvider.autoDispose<RankingStateNotifier, RankingState>((ref) {
  return RankingStateNotifier(ref.watch(rankingRepositoryProvider));
});
