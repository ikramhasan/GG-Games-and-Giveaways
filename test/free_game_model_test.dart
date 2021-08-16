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

  final tFreeGameDetailsNullModel = FreeGameDetails(
    id: 5,
    title: "Crossout",
    thumbnail: "https://www.freetogame.com/g/5/thumbnail.jpg",
    status: "Live",
    shortDescription: "A post-apocalyptic MMO vehicle combat game! ",
    description:
        "Crossout is a free to play post-apocalyptic MMO vehicle combat game! Gaijin Entertainment is taking the vehicular multiplayer shooter genre full gear with Crossout.\r\n\r\nFollowing the double catastrophes of a failed genetic testing project and an alien invasion, players are thrown into a wasteland world not unlike that of Mad Max. The harsh, post-apocalyptic terrain of Crossout forces players to build and customize their vehicles to fight and endure the elements and other players. Hunker down in the in-game Workshop and use the countless parts earned in battle to craft a formidable death machine capable of laying waste to opponents.\r\n\r\nWeapons in Crossout range from roof-mounted miniguns to vehicular chainsaws and everything in between the player can imagine. But combat isn’t all there is to Crossout. The in-game economy is driven by the players, allowing them to trade the parts they’ve earned with one another to craft stronger, pitiless, machines. Vehicles in Crossout must be strong, for the damage a vehicle takes in battle will affect its performance. And when the enemy is charging with a vehicle-mounted powerdrill, peak performance is everything.  Crossout is everything players looking for the post-apocalyptic vehicular warfare experience could possibly want. Find a vehicle and turn it into a death-spitting chariot of war!",
    gameUrl: "https://www.freetogame.com/open/crossout",
    genre: "Shooter",
    platform: "Windows",
    publisher: "Targem",
    developer: "Gaijin",
    releaseDate: DateTime.parse("2017-05-30"),
    freetogameProfileUrl: "https://www.freetogame.com/crossout",
    minimumSystemRequirements: MinimumSystemRequirements(
      os: null,
      processor: null,
      memory: null,
      graphics: null,
      storage: null,
    ),
    screenshots: [
      Screenshot(
        id: 22,
        image: "https://www.freetogame.com/g/5/Crossout-1.jpg",
      ),
      Screenshot(
        id: 23,
        image: "https://www.freetogame.com/g/5/Crossout-1.jpg",
      ),
      Screenshot(
        id: 24,
        image: "https://www.freetogame.com/g/5/Crossout-1.jpg",
      ),
      Screenshot(
        id: 25,
        image: "https://www.freetogame.com/g/5/Crossout-1.jpg",
      ),
    ],
  );

  test(
    'should return a valid free game model when all fields are available',
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

  test(
    'should return a valid free game model when minimum requirements is null',
    () {
      // arrange
      final Map<String, dynamic> jsonMap =
          jsonDecode(fixture('free_game_null.json'));
      // act
      final result = FreeGameDetails.fromJson(jsonMap);
      // assert
      expect(result, equals(tFreeGameDetailsNullModel));
    },
  );
}
