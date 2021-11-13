import 'package:flutter/material.dart';
import 'package:free_games_giveaways/app/presentation/components/gg_back_button.dart';
import 'package:free_games_giveaways/app/utils/analytics.dart';

import '../../free_games/presentation/free_game_details/components/about_widget.dart';
import '../../free_games/presentation/free_game_details/components/button_bar.dart';
import '../data/models/giveaway.dart';

class GiveawayDetailsPage extends StatelessWidget {
  const GiveawayDetailsPage({Key? key, required this.giveaway})
      : super(key: key);

  final Giveaway giveaway;

  @override
  Widget build(BuildContext context) {
    logViewGame(
      itemId: giveaway.id.toString(),
      itemName: giveaway.title ?? 'N/A',
      itemCategory: 'Giveaway',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: giveaway.image ??
                      'https://via.placeholder.com/500x225?text=No+Image+Found',
                  child: Image.network(
                    giveaway.image ??
                        'https://via.placeholder.com/500x225?text=No+Image+Found',
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
                const GGBackButton(),
              ],
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    giveaway.title ?? 'N/A',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(giveaway.description ?? 'N/A'),
                  const SizedBox(height: 16),
                  Text(
                    'Instructions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(giveaway.instructions ?? 'N/A'),
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  KButtonBar(
                    title: giveaway.title ?? 'N/A',
                    url: giveaway.openGiveawayUrl,
                    entityType: EntityType.GIVEAWAY,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'About this giveaway',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  AboutWidget(
                    prefix1: 'Status',
                    prefix2: 'Worth',
                    suffix1: giveaway.status ?? 'N/A',
                    suffix2: giveaway.worth ?? 'N/A',
                  ),
                  AboutWidget(
                    prefix1: 'Type',
                    prefix2: 'Ends at',
                    suffix1: giveaway.type ?? 'N/A',
                    suffix2: giveaway.endDate ?? 'N/A',
                  ),
                  AboutWidget(
                    prefix1: 'Platforms',
                    prefix2: 'Published at',
                    suffix1: giveaway.platforms ?? 'N/A',
                    suffix2: giveaway.publishedDate == null
                        ? 'N/A'
                        : giveaway.publishedDate.toString().substring(0, 10),
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
