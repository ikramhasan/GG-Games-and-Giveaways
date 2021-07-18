import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../models/giveaway.dart';

const BASE_URL = 'https://www.gamerpower.com/api';

class GiveawaysRepository {
  getGiveawaysList(url) async {
    print(url);

    final Uri uri = Uri.parse(url);
    final response = await http.get(uri);

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
