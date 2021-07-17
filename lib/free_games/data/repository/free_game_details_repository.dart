import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../models/free_game_details.dart';

const BASE_URL = 'https://www.freetogame.com/api';

class FreeGameDetailsRepository {
  getGameById(int id) async {
    final Uri url = Uri.parse('$BASE_URL/game?id=${id.toString()}');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        final FreeGameDetails games = FreeGameDetails.fromJson(data);
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
