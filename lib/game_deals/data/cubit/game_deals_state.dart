part of 'game_deals_cubit.dart';

abstract class GameDealsState {}

class GameDealsInitial extends GameDealsState {}

class GameDealsLoading extends GameDealsState {}

class GameDealsError extends GameDealsState {
  final String message;

  GameDealsError(this.message);
}

class GameDealsLoaded extends GameDealsState {
  final List<GameDeal> gameDeals;

  GameDealsLoaded(this.gameDeals);
}
