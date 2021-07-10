import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:free_games_giveaways/giveaways/data/models/giveaway.dart';
import 'package:free_games_giveaways/giveaways/data/repositories/giveaways_repository.dart';
import 'package:meta/meta.dart';

part 'giveaways_state.dart';

class GiveawaysCubit extends Cubit<GiveawaysState> {
  final GiveawaysRepository _repository = GiveawaysRepository();

  GiveawaysCubit() : super(GiveawaysInitial());

  Future<void> getGiveawaysList() async {
    emit(GiveawaysLoading());

    try {
      final List<Giveaway> giveawaysList =
          await _repository.getGiveawaysList() as List<Giveaway>;
      emit(GiveawaysLoaded(giveawaysList: giveawaysList));
    } on SocketException catch (e) {
      emit(GiveawaysError(message: e.message));
    }
  }
}
