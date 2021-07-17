import 'dart:convert';
import 'dart:io';

import 'package:free_games_giveaways/free_games/data/models/free_game.dart';
import 'package:http/http.dart' as http;

const BASE_URL = 'https://www.freetogame.com/api';

class FreeGamesRepository {
  getFreeGamesList(String url) async {
    print(url);
    
    final Uri uri = Uri.parse(url);
    final response = await http.get(uri);

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
}
