import 'dart:convert';
import 'dart:io';

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
        return games;
      } catch (e) {
        throw const SocketException('Could not parse data');
      }
    } else if (response.statusCode == 404) {
      throw const SocketException('Data not found');
    } else {
      throw const SocketException('Unexpected server error occurred');
    }
  }
}
