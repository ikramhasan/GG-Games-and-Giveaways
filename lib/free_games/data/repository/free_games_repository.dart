import 'dart:convert';
import 'dart:io';

import 'package:free_games_giveaways/free_games/data/models/free_game.dart';
import 'package:free_games_giveaways/free_games/data/models/game_entity.dart';
import 'package:http/http.dart' as http;

const BASE_URL = 'https://www.freetogame.com/api';

class FreeGamesRepository {
  getFreeGamesList() async {
    final Uri url = Uri.parse('$BASE_URL/games');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        final List<FreeGame> games =
            (data as List).map((e) => FreeGame.fromJson(e)).toList();
        return games;
      } catch (e) {
        throw const SocketException('Could not parse data');
      }
    }

    if (response.statusCode == 404) {
      throw const SocketException('Data not found');
    }

    if (response.statusCode == 500) {
      throw const SocketException('Unexpected server error occurred');
    }
  }

  getGameById(int id) async {
    final Uri url = Uri.parse('$BASE_URL/game?id=${id.toString()}');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        final List<GameEntity> games =
            (data as List).map((e) => GameEntity.fromJson(e)).toList();
        return games;
      } catch (e) {
        throw const SocketException('Could not parse data');
      }
    }

    if (response.statusCode == 404) {
      throw const SocketException('Data not found');
    }

    if (response.statusCode == 500) {
      throw const SocketException('Unexpected server error occurred');
    }
  }
}
