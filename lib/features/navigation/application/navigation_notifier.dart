import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navigation_notifier.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const NavigationState._();
  const factory NavigationState({required int page}) = _NavigationState;
  factory NavigationState.initial() => const NavigationState(page: 0);
}

class NavigationNotifier extends StateNotifier<NavigationState> {
  NavigationNotifier() : super(NavigationState.initial());

  void setPage(int page) {
    state = state.copyWith(page: page);
  }
}
