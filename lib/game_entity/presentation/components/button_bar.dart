import 'package:flutter/material.dart';

import 'package:free_games_giveaways/app/utils/launch_url.dart';
import 'package:free_games_giveaways/game_entity/data/models/game_entity.dart';

class KButtonBar extends StatelessWidget {
  final GameEntity game;

  const KButtonBar({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).cardColor,
                minimumSize: Size(200, 50),
                side: BorderSide(
                  color: Theme.of(context).accentColor,
                ),
              ),
              onPressed: () {
                launchURL(game.gameUrl);
              },
              child: Text(
                'Get the Game',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).cardColor,
              minimumSize: Size(50, 50),
              side: BorderSide(
                color: Theme.of(context).accentColor,
              ),
            ),
            onPressed: () {
              launchURL(game.gameUrl);
            },
            child: Icon(
              Icons.share,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
