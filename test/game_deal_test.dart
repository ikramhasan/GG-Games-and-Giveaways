import 'package:flutter_test/flutter_test.dart';
import 'package:free_games_giveaways/game_deals/data/models/game_deals.dart';

import 'fixtures/fixture_reader.dart';

void main() {
  group(
    'GameDeals',
    () {
      final tGameDealList = [
        GameDeal(
          internalName: 'internalName',
          title: 'title',
          dealId: 'dealId',
          storeId: 'storeId',
          gameId: 'gameId',
          salePrice: 'salePrice',
          normalPrice: 'normalPrice',
          isOnSale: 'isOnSale',
          steamAppId: 'steamAppId',
          metacriticLink: 'metacriticLink',
          savings: 'savings',
          metacriticScore: 'metacriticScore',
          steamRatingPercent: 'steamRatingPercent',
          steamRatingCount: 'steamRatingCount',
          releaseDate: 1590105600,
          lastChange: 1629922706,
          dealRating: 'dealRating',
          thumb: 'thumb',
        ),
      ];

      final tGameDealListNull = [
        GameDeal(
          internalName: 'internalName',
          title: 'title',
          dealId: 'dealId',
          storeId: 'storeId',
          gameId: 'gameId',
          salePrice: 'salePrice',
          normalPrice: 'normalPrice',
          isOnSale: 'isOnSale',
          savings: 'savings',
          metacriticScore: 'metacriticScore',
          steamRatingPercent: 'steamRatingPercent',
          steamRatingCount: 'steamRatingCount',
          releaseDate: 1590105600,
          lastChange: 1629922706,
          dealRating: 'dealRating',
          thumb: 'thumb',
        ),
      ];

      test(
        'should return a valid free game deal model when all fields are available',
        () {
          // act
          final result = gameDealFromJson(fixture('deals_list_safe.json'));
          // assert
          expect(result, equals(tGameDealList));
        },
      );

      test(
        'should return a valid free game deal model when null value are present',
        () {
          // act
          final result = gameDealFromJson(fixture('deals_list_null.json'));
          // assert
          expect(result, equals(tGameDealListNull));
        },
      );
    },
  );
}
