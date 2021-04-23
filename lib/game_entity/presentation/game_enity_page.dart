import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/game_entity/data/cubit/game_entity_cubit.dart';
import 'package:free_games_giveaways/game_entity/presentation/components/about_section.dart';
import 'package:free_games_giveaways/game_entity/presentation/components/game_header.dart';
import 'package:free_games_giveaways/game_entity/presentation/components/minimum_spec_section.dart';
import 'package:free_games_giveaways/game_entity/presentation/components/screenshot_section.dart';

import 'components/button_bar.dart';

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
                  GameHeader(game: state.game),
                  SizedBox(height: 8),
                  AboutSection(game: state.game),
                  SizedBox(height: 16),
                  KButtonBar(game: state.game),
                  ScreenshotSection(game: state.game),
                  MinimumSpecSection(game: state.game),
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
