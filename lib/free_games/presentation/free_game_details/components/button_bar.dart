import 'package:flutter/material.dart';
import 'package:free_games_giveaways/app/utils/analytics.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../app/utils/launch_url.dart';

// ignore_for_file: constant_identifier_names
enum EntityType { GAME, GIVEAWAY }

class KButtonBar extends StatelessWidget {
  final String url;
  final String title;
  final EntityType entityType;

  const KButtonBar({
    Key? key,
    required this.url,
    required this.title,
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
                minimumSize: const Size(200, 50),
                side: BorderSide(
                  color: Theme.of(context).accentColor,
                ),
              ),
              onPressed: () {
                launchURL(url);
                logActionButtonPressed(id: url, title: title);
              },
              child: Text(
                entityType == EntityType.GAME
                    ? 'Get the Game'
                    : 'Go to Giveaway',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).cardColor,
              minimumSize: const Size(50, 50),
              side: BorderSide(
                color: Theme.of(context).accentColor,
              ),
            ),
            onPressed: () {
              Share.share(
                '$title is now free! Get it before the time runs out!: $url. To get more free free games like this, download this app: https://play.google.com/store/apps/details?id=com.ikramhasan.free_games_giveaways',
              );
              logShare(
                contentType: entityType.toString(),
                itemId: url,
                method: title,
              );
            },
            child: Icon(
              Icons.share,
              color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}
