import 'dart:convert';
import 'dart:io';

import 'package:free_games_giveaways/app/utils/logger.dart';
import 'package:http/http.dart' as http;

import '../models/free_game_details.dart';

// ignore_for_file: constant_identifier_names
const BASE_URL = 'https://www.freetogame.com/api';

class FreeGameDetailsRepository {
  Future<FreeGameDetails> getGameById(int id) async {
    final Uri url = Uri.parse('$BASE_URL/game?id=${id.toString()}');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data =
            jsonDecode(response.body) as Map<String, dynamic>;
        final FreeGameDetails games = FreeGameDetails.fromJson(data);
        logger.d('Got Free Game Details Data', 'API Response');
        return games;
      } catch (e) {
        logger.e(e.toString(), 'Free Game Details API Error');
        throw const SocketException('Could not parse data');
      }
    } else if (response.statusCode == 404) {
      logger.e('Data not found!', 'Free Game Details API Error');
      throw const SocketException('Data not found');
    } else {
      logger.e(
          'Unexpected server error occurred', 'Free Game Details API Error');
      throw const SocketException('Unexpected server error occurred');
    }
  }
}
