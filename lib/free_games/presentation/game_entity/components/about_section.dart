import 'package:flutter/material.dart';
import 'package:free_games_giveaways/free_games/data/models/free_game_details.dart';

import 'about_widget.dart';

class AboutSection extends StatelessWidget {
  final FreeGameDetails game;

  const AboutSection({Key? key, required this.game}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About ${game.title}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 8),
          AboutWidget(
            prefix1: 'Game',
            prefix2: 'Genre',
            suffix1: game.title,
            suffix2: game.genre,
          ),
          AboutWidget(
            prefix1: 'Platform',
            prefix2: 'Publisher',
            suffix1: game.platform,
            suffix2: game.publisher,
          ),
          AboutWidget(
            prefix1: 'Developer',
            prefix2: 'Release Date',
            suffix1: game.developer,
            suffix2: game.releaseDate.toString().substring(0, 10),
          ),
        ],
      ),
    );
  }
}
