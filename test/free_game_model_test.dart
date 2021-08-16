import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:free_games_giveaways/free_games/data/models/free_game_details.dart';

import 'fixtures/fixture_reader.dart';

void main() {
  final tFreeGameDetailsModel = FreeGameDetails(
    id: 1,
    title: "Dauntless",
    thumbnail: "https://www.freetogame.com/g/1/thumbnail.jpg",
    shortDescription:
        "A free-to-play, co-op action RPG with gameplay similar to Monster Hunter.",
    gameUrl: "https://www.freetogame.com/open/dauntless",
    genre: "MMORPG",
    platform: "Windows",
    publisher: "Phoenix Labs",
    developer: "Phoenix Labs, Iron Galaxy",
    releaseDate: DateTime.parse("2019-05-21"),
    freetogameProfileUrl: "https://www.freetogame.com/dauntless",
    description:
        "Dauntless is a free-to-play, co-op action RPG developed by independent studio Phoenix Labs — a studio made of of veteran developers from Bioware, Riot, Capcom, and Blizzard. Set in a science-fantasy world, Dauntless places players in the role of elite warriors called Slayers. These Slayers protect humanity from Behemoths that are consuming the land following a cataclysmic event that turned the landscape into ever-changing, floating islands.\r\n\r\nThe gameplay may remind players of Monster Hunter, or perhaps a cheerier version of Shadow of the Colossus, where the goal is to defeat massive creates in an vast landscape.\r\n\r\nDauntless is playable solo, although it is designed with co-op play in mind. It boasts a variety of unique encounters and rewards players with items that will allow them to upgrade weapons and armor — enabling them to become even stronger warriors.",
    minimumSystemRequirements: MinimumSystemRequirements(
      graphics: "GPU: nVidia 660Ti (DX11) or equivalent",
      memory: "4GB",
      os: "Windows 7 DX11 Support",
      storage: "15GB of storage space",
      processor: "CPU: i5 SandyBridge",
    ),
    screenshots: [
      Screenshot(
        id: 5,
        image: "https://www.freetogame.com/g/1/dauntless-1.jpg",
      ),
      Screenshot(
        id: 6,
        image: "https://www.freetogame.com/g/1/dauntless-2.jpg",
      ),
      Screenshot(
        id: 7,
        image: "https://www.freetogame.com/g/1/dauntless-3.jpg",
      ),
      Screenshot(
        id: 9,
        image: "https://www.freetogame.com/g/1/dauntless-4.jpg",
      ),
    ],
    status: "Live",
  );
  test(
    'should return a valid free game model when JSON data is accurate',
    () {
      // arrange
      final Map<String, dynamic> jsonMap =
          jsonDecode(fixture('free_game.json'));
      // act
      final result = FreeGameDetails.fromJson(jsonMap);
      // assert
      expect(result, equals(tFreeGameDetailsModel));
    },
  );
}
