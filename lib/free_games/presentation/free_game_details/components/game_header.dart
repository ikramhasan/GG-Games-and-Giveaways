import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import '../../../data/models/free_game_details.dart';

class GameHeader extends StatelessWidget {
  final FreeGameDetails game;

  const GameHeader({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            game.title!,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        GFAccordion(
          title: game.shortDescription,
          content: game.description,
          collapsedTitleBackgroundColor: Theme.of(context).canvasColor,
          textStyle: const TextStyle(color: Colors.white),
          expandedTitleBackgroundColor: Theme.of(context).cardColor,
          contentBackgroundColor: Theme.of(context).cardColor,
          expandedIcon: Text(
            '- Hide',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
          collapsedIcon: Text(
            '+ Read more',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ],
    );
  }
}
