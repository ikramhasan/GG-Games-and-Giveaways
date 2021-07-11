import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:free_games_giveaways/app/utils/launch_url.dart';

enum EntityType { GAME, GIVEAWAY }

class KButtonBar extends StatelessWidget {
  final String url;
  final EntityType entityType;

  const KButtonBar({
    Key? key,
    required this.url,
    required this.entityType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: entityType == EntityType.GAME ? 16 : 0,
      ),
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
                launchURL(url);
              },
              child: Text(
                entityType == EntityType.GAME
                    ? 'Get the Game'
                    : 'Go to Giveaway',
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
              Share.share('Check this out!: $url');
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
