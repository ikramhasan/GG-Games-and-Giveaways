import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

import '../models/free_game.dart';
import '../repository/free_games_repository.dart';

part 'free_games_state.dart';

class FreeGamesCubit extends Cubit<FreeGamesState> {
  final FreeGamesRepository _repository = FreeGamesRepository();
  FreeGamesCubit() : super(FreeGamesLoading());

  Future<void> getFreeGamesList({
    String? sort,
    String? platform,
    String? category,
  }) async {
    emit(FreeGamesLoading());

    String url = '$BASE_URL/games';

    if (sort != null && sort.isNotEmpty) {
      if (url.contains('?')) {
        url = '$url&sort-by=$sort';
      } else {
        url = '$url?sort-by=$sort';
      }
    }

    if (platform != null && platform.isNotEmpty) {
      if (url.contains('?')) {
        url = '$url&platform=$platform';
      } else {
        url = '$url?platform=$platform';
      }
    }
    if (category != null && category.isNotEmpty) {
      url = '$url&category=$category';
    }

    try {
      final List<FreeGame> freeGamesList =
          await _repository.getFreeGamesList(url);

      emit(FreeGamesLoaded(freeGamesList: freeGamesList));
    } catch (e) {
      emit(
        FreeGamesError(
          message:
              'No free games available for this filter at this moment. Please try again later',
        ),
      );
      final List<FreeGame> freeGamesList =
          await _repository.getFreeGamesList('$BASE_URL/games');

      emit(FreeGamesLoaded(freeGamesList: freeGamesList));
    }
  }
}
