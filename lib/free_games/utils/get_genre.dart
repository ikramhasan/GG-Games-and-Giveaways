import '../data/models/free_game.dart';

String getGenreString(Genre? genre) {
  switch (genre) {
    case Genre.ACTION_RPG:
      return 'Action RPG';
    case Genre.ARPG:
      return 'ARPG';
    case Genre.BATTLE_ROYALE:
      return 'Battle Royal';
    case Genre.CARD:
      return 'Card';
    case Genre.CARD_GAME:
      return 'Card Game';
    case Genre.FANTASY:
      return 'Fantasy';
    case Genre.FIGHTING:
      return 'Fighting';
    case Genre.GENRE_MMORPG:
      return 'MMORPG';
    case Genre.MMO:
      return 'MMO';
    case Genre.MMORPG:
      return 'MMORPG';
    case Genre.MOBA:
      return 'MOBA';
    case Genre.RACING:
      return 'RACING';
    case Genre.SHOOTER:
      return 'Shooter';
    case Genre.SOCIAL:
      return 'Social';
    case Genre.SPORTS:
      return 'Sports';
    case Genre.STRATEGY:
      return 'Strategy';
    default:
      return 'N/A';
  }
}
