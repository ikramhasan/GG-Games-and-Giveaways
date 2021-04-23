part of 'game_entity_cubit.dart';

@immutable
abstract class GameEntityState {}

class GameEntityInitial extends GameEntityState {}



class GameEntityLoading extends GameEntityState {}

class GameEntityLoaded extends GameEntityState {
  final GameEntity game;

  GameEntityLoaded({
    required this.game,
  });
}

class GameEntityError extends GameEntityState {
  final String message;

  GameEntityError({
    required this.message,
  });
}
