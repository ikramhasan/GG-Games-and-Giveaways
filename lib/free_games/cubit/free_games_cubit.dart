import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:free_games_giveaways/free_games/data/models/free_game.dart';
import 'package:free_games_giveaways/game_entity/data/models/game_entity.dart';
import 'package:free_games_giveaways/free_games/data/repository/free_games_repository.dart';
import 'package:meta/meta.dart';

part 'free_games_state.dart';

class FreeGamesCubit extends Cubit<FreeGamesState> {
  final FreeGamesRepository _repository = FreeGamesRepository();
  FreeGamesCubit() : super(FreeGamesLoading());

  Future<void> getFreeGamesList() async {
    emit(FreeGamesLoading());

    try {
      final List<FreeGame> freeGamesList =
          await _repository.getFreeGamesList() as List<FreeGame>;
      emit(FreeGamesLoaded(freeGamesList: freeGamesList));
    } on SocketException catch (e) {
      emit(FreeGamesError(message: e.message));
    }
  }
}
