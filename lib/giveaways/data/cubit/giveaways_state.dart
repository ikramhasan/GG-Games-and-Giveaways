part of 'giveaways_cubit.dart';

abstract class GiveawaysState {}

class GiveawaysInitial extends GiveawaysState {}

class GiveawaysLoading extends GiveawaysState {}

class GiveawaysLoaded extends GiveawaysState {
  final List<Giveaway> giveawaysList;

  GiveawaysLoaded({
    required this.giveawaysList,
  });
}

class GiveawaysError extends GiveawaysState {
  final String message;

  GiveawaysError({
    required this.message,
  });
}
