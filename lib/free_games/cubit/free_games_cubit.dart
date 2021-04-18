import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:free_games_giveaways/free_games/data/models/game.dart';
import 'package:free_games_giveaways/free_games/data/repository/free_games_repository.dart';
import 'package:meta/meta.dart';

part 'free_games_state.dart';

class FreeGamesCubit extends Cubit<FreeGamesState> {
  final FreeGamesRepository _repository = FreeGamesRepository();
  FreeGamesCubit() : super(FreeGamesLoading());

  getFreeGamesList() async {
    emit(FreeGamesLoading());

    try {
      final List<Game> freeGamesList =
          await _repository.getFreeGamesList() as List<Game>;
      emit(FreeGamesLoaded(freeGamesList: freeGamesList));
    } on SocketException catch (e) {
      emit(FreeGamesError(message: e.message));
    }
  }
}
