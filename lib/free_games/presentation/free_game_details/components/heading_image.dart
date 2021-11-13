import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:free_games_giveaways/app/presentation/components/gg_back_button.dart';

class HeadingImage extends StatelessWidget {
  const HeadingImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: imageUrl,
          child: Image.network(
            imageUrl,
            height: 225,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 225,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.8, 1],
              colors: [
                Colors.transparent,
                Theme.of(context).canvasColor,
              ],
            ),
          ),
        ),
        const GGBackButton(),
      ],
    );
  }
}
