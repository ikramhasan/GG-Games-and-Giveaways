import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/free_game_details.dart';
import '../repository/free_game_details_repository.dart';

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
