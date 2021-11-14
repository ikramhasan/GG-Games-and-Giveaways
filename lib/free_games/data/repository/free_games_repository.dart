import 'dart:convert';
import 'dart:io';

import 'package:free_games_giveaways/app/utils/logger.dart';
import 'package:http/http.dart' as http;

import '../models/free_game.dart';

// ignore_for_file: constant_identifier_names
const BASE_URL = 'https://www.freetogame.com/api';

class FreeGamesRepository {
  Future<List<FreeGame>> getFreeGamesList(String url) async {
    final Uri uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        final List<FreeGame> games = (data as List)
            .map((e) => FreeGame.fromJson(e as Map<String, dynamic>))
            .toList();
        logger.d('Got Free Game Data', 'Free Game API Response');
        return games;
      } catch (e) {
        logger.e(e.toString(), 'Free Game API Error');
        throw const SocketException('Could not parse data');
      }
    } else if (response.statusCode == 404) {
      logger.e('Data not found!', 'Free Game API Error');
      throw const SocketException('Data not found');
    } else {
      logger.e('Unexpected server error occurred', 'Free Game API Error');
      throw const SocketException('Unexpected server error occurred');
    }
  }
}
