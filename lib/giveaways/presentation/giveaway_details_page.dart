import 'package:flutter/material.dart';

import '../../free_games/presentation/free_game_details/components/about_widget.dart';
import '../../free_games/presentation/free_game_details/components/button_bar.dart';
import '../data/models/giveaway.dart';

class GiveawayDetailsPage extends StatelessWidget {
  const GiveawayDetailsPage({Key? key, required this.giveaway})
      : super(key: key);

  final Giveaway giveaway;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: giveaway.image,
                  child: Image.network(
                    giveaway.image,
                    height: 225,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 225,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.6, 0.9],
                      colors: [
                        Colors.transparent,
                        Theme.of(context).canvasColor,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    giveaway.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(giveaway.description),
                  const SizedBox(height: 16),
                  Text(
                    'Instructions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(giveaway.instructions),
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  KButtonBar(
                    title: giveaway.title,
                    url: giveaway.openGiveawayUrl,
                    entityType: EntityType.GIVEAWAY,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'About this giveaway',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  AboutWidget(
                    prefix1: 'Status',
                    prefix2: 'Worth',
                    suffix1: giveaway.status,
                    suffix2: giveaway.worth,
                  ),
                  AboutWidget(
                    prefix1: 'Type',
                    prefix2: 'Ends at',
                    suffix1: giveaway.type,
                    suffix2: giveaway.endDate.toString().substring(0, 10),
                  ),
                  AboutWidget(
                    prefix1: 'Platforms',
                    prefix2: 'Published at',
                    suffix1: giveaway.platforms,
                    suffix2: giveaway.publishedDate.toString().substring(0, 10),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
