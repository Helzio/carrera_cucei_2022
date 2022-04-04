import 'package:carrera_cucei_2022/features/ranking/domain/entities/ranking_user.dart';
import 'package:carrera_cucei_2022/features/ranking/domain/failures/ranking_failure.dart';
import 'package:carrera_cucei_2022/features/rankingme/infrastructure/repositories/rankingme_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'rankingme_notifier.freezed.dart';

@freezed
class RankingmeState with _$RankingmeState {
  const RankingmeState._();
  const factory RankingmeState.initial() = _Initial;
  const factory RankingmeState.loading() = _Loading;
  const factory RankingmeState.loaded(RankingUser user) = _Loaded;
  const factory RankingmeState.failure(RankingFailure failure) = _Failure;
}

class RankingmeStateNotifier extends StateNotifier<RankingmeState> {
  final RankingmeRepository _repository;
  RankingmeStateNotifier(this._repository)
      : super(const RankingmeState.initial());

  void reset() {
    state = const RankingmeState.initial();
  }

  Future<void> getRanking({required String codigo}) async {
    state = const RankingmeState.loading();

    final response = await _repository.getRankingme(
      codigo: codigo,
    );
    response.fold(
      (l) => state = RankingmeState.failure(l),
      (r) => state = RankingmeState.loaded(r),
    );
  }
}
