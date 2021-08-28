import 'package:bloc/bloc.dart';
import 'package:free_games_giveaways/game_deals/data/models/game_deals.dart';
import 'package:free_games_giveaways/game_deals/data/repository/game_deals_repository.dart';
import 'package:meta/meta.dart';

part 'game_deals_state.dart';

class GameDealsCubit extends Cubit<GameDealsState> {
  final GameDealsRepository _repository = GameDealsRepository();

  GameDealsCubit() : super(GameDealsInitial());

  Future<void> getGameDeals() async {
    emit(GameDealsLoading());

    try {
      final List<GameDeal> gameDeals = await _repository.getGameDealsList();

      emit(GameDealsLoaded(gameDeals));
    } catch (e) {
      emit(GameDealsError('Error occurred while connecting to the server'));
    }
  }
}