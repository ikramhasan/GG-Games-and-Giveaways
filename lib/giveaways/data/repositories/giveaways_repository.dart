import 'dart:convert';
import 'dart:io';
import 'package:free_games_giveaways/giveaways/data/models/giveaway.dart';
import 'package:http/http.dart' as http;

const BASE_URL = 'https://www.gamerpower.com/api';

class GiveawaysRepository {
  getGiveawaysList() async {
    final Uri url = Uri.parse('$BASE_URL/giveaways');
    final response = await http.get(url);

    print(response.body);

    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        final List<Giveaway> games =
            (data as List).map((e) => Giveaway.fromJson(e)).toList();
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
