import 'dart:convert';
import 'dart:io';
import 'package:free_games_giveaways/game_entity/data/models/game_entity.dart';
import 'package:http/http.dart' as http;

const BASE_URL = 'https://www.freetogame.com/api';

class GameEntityRepository {
  

  getGameById(int id) async {
    final Uri url = Uri.parse('$BASE_URL/game?id=${id.toString()}');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        final GameEntity games = GameEntity.fromJson(data);
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