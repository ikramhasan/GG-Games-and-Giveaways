import 'dart:convert';
import 'dart:io';

import 'package:free_games_giveaways/app/utils/logger.dart';
import 'package:http/http.dart' as http;

import '../models/giveaway.dart';

// ignore_for_file: constant_identifier_names
const BASE_URL = 'https://www.gamerpower.com/api';

class GiveawaysRepository {
  Future<List<Giveaway>> getGiveawaysList(String url) async {
    final Uri uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        final List<Giveaway> games = (data as List)
            .map((e) => Giveaway.fromJson(e as Map<String, dynamic>))
            .toList();
        logger.d('Got Giveaway Data', 'Giveaway API Response');
        return games;
      } catch (e) {
        logger.e(e.toString(), 'Giveaway API Error');
        throw const SocketException('Could not parse data');
      }
    } else if (response.statusCode == 404) {
      logger.e('Status code 404', 'Giveaway API Error');
      throw const SocketException('Data not found');
    } else {
      logger.e('Unexpected server error occured!', 'Giveaway API Error');
      throw const SocketException('Unexpected server error occurred');
    }
  }
}
