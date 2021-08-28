import 'dart:convert';
import 'dart:io';

import 'package:free_games_giveaways/game_deals/data/models/game_deals.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: constant_identifier_names
const BASE_URL = 'https://www.cheapshark.com/api/1.0/deals';

class GameDealsRepository {
  Future<List<GameDeal>> getGameDealsList() async {
    final Uri uri = Uri.parse(BASE_URL);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      try {
        //final data = jsonDecode(response.body);
        final List<GameDeal> gameDeals = gameDealFromJson(response.body);
        // (data as List)
        //     .map((e) => GameDeal.fromJson(e as Map<String, dynamic>))
        //     .toList();
        return gameDeals;
      } catch (e) {
        throw const SocketException('Could not parse data');
      }
    } else {
      throw const SocketException('Unexpected server error occurred');
    }
  }
}
