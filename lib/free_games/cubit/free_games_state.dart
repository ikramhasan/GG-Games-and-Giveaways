part of 'free_games_cubit.dart';

@immutable
abstract class FreeGamesState {}

class FreeGamesLoading extends FreeGamesState {}

class FreeGamesLoaded extends FreeGamesState {
  final List<FreeGame> freeGamesList;

  FreeGamesLoaded({
    required this.freeGamesList,
  });
}

class FreeGamesError extends FreeGamesState {
  final String message;

  FreeGamesError({
    required this.message,
  });
}
