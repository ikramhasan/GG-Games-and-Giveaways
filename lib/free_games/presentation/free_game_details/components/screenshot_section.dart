import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

import '../../../data/models/free_game_details.dart';

class ScreenshotSection extends StatelessWidget {
  final FreeGameDetails game;

  const ScreenshotSection({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Screenshots',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(height: 8),
          GFCarousel(
            autoPlay: true,
            pagerSize: double.infinity,
            items: game.screenshots.map(
              (url) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(
                      url.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
