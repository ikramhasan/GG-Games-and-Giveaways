import 'package:flutter/material.dart';
import '../../../data/models/free_game.dart';
import '../../free_game_details/free_game_details_page.dart';

class ThumbnailPreview extends StatelessWidget {
  final String imageUrl;
  final FreeGame game;
  const ThumbnailPreview({
    Key? key,
    required this.imageUrl,
    required this.game,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Hero(
            tag: imageUrl,
            child: Image.network(
              imageUrl,
              height: 192,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 192,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0, 0.5, 1],
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.transparent,
                Colors.black.withOpacity(0.3),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FreeGameDetailsPage(id: game.id),
                ),);
              },
            ),
          ),
        ),
      ],
    );
  }
}
