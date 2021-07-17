import 'package:flutter/material.dart';

import '../../../data/models/free_game.dart';
import '../../../utils/get_genre.dart';
import '../../free_game_details/free_game_details_page.dart';
import 'thumbnail_preview.dart';

class GameCard extends StatelessWidget {
  final FreeGame game;

  const GameCard({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 198,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThumbnailPreview(imageUrl: game.thumbnail),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Material(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FreeGameDetailsPage(id: game.id),
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          game.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        SizedBox(height: 8),
                        Expanded(
                          child: Text(
                            game.shortDescription,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 8),
                        buildFooter(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildFooter() {
    return Row(
      children: [
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFF4C8219),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 2,
            ),
            child: Center(
              child: Text(
                game.platform == Platform.PC_WINDOWS ? 'PC' : 'PC / BROWSER',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFF4C8219),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 2,
            ),
            child: Center(
              child: Text(
                getGenreString(game.genre!),
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
