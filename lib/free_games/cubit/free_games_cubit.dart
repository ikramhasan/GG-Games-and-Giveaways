import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'free_games_state.dart';

class FreeGamesCubit extends Cubit<FreeGamesState> {
  FreeGamesCubit() : super(FreeGamesInitial());
}
