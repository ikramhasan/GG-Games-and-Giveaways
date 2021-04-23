import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/app/presentation/components/progress_image.dart';
import 'package:free_games_giveaways/app/utils/launch_url.dart';
import 'package:free_games_giveaways/game_entity/data/cubit/game_entity_cubit.dart';
import 'package:free_games_giveaways/game_entity/presentation/components/info_rich_text.dart';
import 'package:getwidget/getwidget.dart';
import 'package:octo_image/octo_image.dart';

class GameEntityPage extends StatelessWidget {
  final int id;

  const GameEntityPage({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<GameEntityCubit>();
    bloc.getGameEntity(id);
    return Scaffold(
      body: BlocConsumer<GameEntityCubit, GameEntityState>(
        listener: (context, state) {
          if (state is GameEntityError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          if (state is GameEntityLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is GameEntityLoaded) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.network(
                        state.game.thumbnail,
                        height: 225,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                      Container(
                        height: 225,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.8, 1],
                            colors: [
                              Colors.transparent,
                              Theme.of(context).canvasColor,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          state.game.title,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).accentColor,
                          ),
                          onPressed: () {
                            launchURL(state.game.gameUrl);
                          },
                          child: Text(
                            'Get the Game',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GFAccordion(
                    title: state.game.shortDescription,
                    content: state.game.description,
                    collapsedTitleBackgroundColor:
                        Theme.of(context).canvasColor,
                    textStyle: TextStyle(color: Colors.white),
                    expandedTitleBackgroundColor: Theme.of(context).cardColor,
                    contentBackgroundColor: Theme.of(context).cardColor,
                    expandedIcon: Text(
                      'hide',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                    collapsedIcon: Text(
                      'show',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'About ${state.game.title}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  InfoRichText(text1: 'Genre', text2: state.game.genre),
                  InfoRichText(text1: 'Platform', text2: state.game.platform),
                  InfoRichText(text1: 'Publisher', text2: state.game.publisher),
                  InfoRichText(text1: 'Developer', text2: state.game.developer),
                  InfoRichText(
                    text1: 'Release Date',
                    text2: state.game.releaseDate.toString().substring(0, 10),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Minimum System Requirements',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  InfoRichText(
                    text1: 'OS',
                    text2: state.game.minimumSystemRequirements.os,
                  ),
                  InfoRichText(
                    text1: 'Processor',
                    text2: state.game.minimumSystemRequirements.processor,
                  ),
                  InfoRichText(
                    text1: 'Memory',
                    text2: state.game.minimumSystemRequirements.memory,
                  ),
                  InfoRichText(
                    text1: 'Graphics',
                    text2: state.game.minimumSystemRequirements.graphics,
                  ),
                  InfoRichText(
                    text1: 'Storage',
                    text2: state.game.minimumSystemRequirements.storage,
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Screenshots',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 8),
                  GFCarousel(
                    autoPlay: true,
                    pagerSize: double.infinity,
                    items: state.game.screenshots.map(
                      (url) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
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
          return Container();
        },
      ),
    );
  }
}
