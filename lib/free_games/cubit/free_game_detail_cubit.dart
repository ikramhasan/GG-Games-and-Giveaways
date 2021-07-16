import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:free_games_giveaways/free_games/data/models/free_game_details.dart';
import 'package:free_games_giveaways/free_games/data/repository/free_game_details_repository.dart';
import 'package:meta/meta.dart';

part 'free_game_detail_state.dart';

class FreeGameDetailsCubit extends Cubit<FreeGameDetailsState> {
  final FreeGameDetailsRepository _repository = FreeGameDetailsRepository();
  FreeGameDetailsCubit() : super(FreeGameDetailsInitial());

  Future<void> getFreeGameDetails(int id) async {
    emit(FreeGameDetailsLoading());

    try {
      final FreeGameDetails game = await _repository.getGameById(id);
      emit(FreeGameDetailsLoaded(game: game));
    } on SocketException catch (e) {
      emit(FreeGameDetailsError(message: e.message));
    }
  }
}
