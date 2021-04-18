import 'dart:convert';

import 'package:free_games_giveaways/app/errors/error.dart';
import 'package:free_games_giveaways/free_games/data/models/game.dart';
import 'package:http/http.dart' as http;

const BASE_URL = 'https://www.freetogame.com/api';

class FreeGamesRepository {
  getFreeGamesList() async {
    final Uri url = Uri.parse('$BASE_URL/games');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      try {
        final data = jsonEncode(response.body);
        final List<Game> game = gameFromJson(data);
        return game;
      } catch (e) {
        throw CustomError(message: 'Could not parse data');
      }
    }
  }
}
