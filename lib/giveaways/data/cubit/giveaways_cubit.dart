import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/giveaway.dart';
import '../repositories/giveaways_repository.dart';

part 'giveaways_state.dart';

class GiveawaysCubit extends Cubit<GiveawaysState> {
  final GiveawaysRepository _repository = GiveawaysRepository();

  GiveawaysCubit() : super(GiveawaysInitial());

  Future<void> getGiveawaysList({
    String? sort,
    String? platform,
    String? type,
  }) async {
    emit(GiveawaysLoading());

    String url = '$BASE_URL/giveaways';

    if (sort != null && sort.isNotEmpty) {
      if (url.contains('?')) {
        url = url + '&sort-by=$sort';
      } else {
        url = url + '?sort-by=$sort';
      }
    }

    if (platform != null && platform.isNotEmpty) {
      if (url.contains('?')) {
        url = url + '&platform=$platform';
      } else {
        url = url + '?platform=$platform';
      }
    }
    if (type != null && type.isNotEmpty) {
      if (url.contains('?')) {
        url = url + '&type=$type';
      } else {
        url = url + '?type=$type';
      }
    }

    try {
      final List<Giveaway> giveawaysList =
          await _repository.getGiveawaysList(url) as List<Giveaway>;
      emit(GiveawaysLoaded(giveawaysList: giveawaysList));
    } catch (e) {
      emit(GiveawaysError(
          message:
              'No active giveaways available for this filter at the moment, please try again later.'));
      final List<Giveaway> giveawaysList = await _repository
          .getGiveawaysList('$BASE_URL/giveaways') as List<Giveaway>;
      emit(GiveawaysLoaded(giveawaysList: giveawaysList));
    }
  }
}
