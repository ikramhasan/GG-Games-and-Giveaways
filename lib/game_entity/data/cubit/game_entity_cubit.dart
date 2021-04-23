import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:free_games_giveaways/game_entity/data/models/game_entity.dart';
import 'package:free_games_giveaways/game_entity/data/repository/game_entity_repository.dart';
import 'package:meta/meta.dart';

part 'game_entity_state.dart';

class GameEntityCubit extends Cubit<GameEntityState> {
  final GameEntityRepository _repository = GameEntityRepository();
  GameEntityCubit() : super(GameEntityInitial());

  Future<void> getGameEntity(int id) async {
    emit(GameEntityLoading());

    try {
      final GameEntity game = await _repository.getGameById(id);
      emit(GameEntityLoaded(game: game));
    } on SocketException catch (e) {
      emit(GameEntityError(message: e.message));
    }
  }
}
