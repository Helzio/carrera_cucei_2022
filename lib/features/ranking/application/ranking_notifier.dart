import 'package:carrera_cucei_2022/features/ranking/domain/entities/ranking_user.dart';
import 'package:carrera_cucei_2022/features/ranking/domain/failures/ranking_failure.dart';
import 'package:carrera_cucei_2022/features/ranking/infrastructure/repositories/ranking_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ranking_notifier.freezed.dart';

@freezed
class RankingState with _$RankingState {
  const RankingState._();
  const factory RankingState.initial() = _Initial;
  const factory RankingState.loading() = _Loading;
  const factory RankingState.loaded(List<RankingUser> users) = _Loaded;
  const factory RankingState.failure(RankingFailure failure) = _Failure;
}

class RankingStateNotifier extends StateNotifier<RankingState> {
  final RankingRepository _repository;
  RankingStateNotifier(this._repository) : super(const RankingState.initial());

  void reset() {
    state = const RankingState.initial();
  }

  Future<void> getRanking() async {
    state = const RankingState.loading();

    final response = await _repository.getRanking();
    response.fold(
      (l) => state = RankingState.failure(l),
      (r) => state = RankingState.loaded(r),
    );
  }
}
