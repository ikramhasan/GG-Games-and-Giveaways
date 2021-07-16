part of 'free_game_detail_cubit.dart';

@immutable
abstract class FreeGameDetailsState {}

class FreeGameDetailsInitial extends FreeGameDetailsState {}

class FreeGameDetailsLoading extends FreeGameDetailsState {}

class FreeGameDetailsLoaded extends FreeGameDetailsState {
  final FreeGameDetails game;

  FreeGameDetailsLoaded({
    required this.game,
  });
}

class FreeGameDetailsError extends FreeGameDetailsState {
  final String message;

  FreeGameDetailsError({
    required this.message,
  });
}
