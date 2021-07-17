import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/cubit/free_game_detail_cubit.dart';
import 'components/about_section.dart';
import 'components/button_bar.dart';
import 'components/game_header.dart';
import 'components/minimum_spec_section.dart';
import 'components/screenshot_section.dart';

class FreeGameDetailsPage extends StatelessWidget {
  final int id;

  const FreeGameDetailsPage({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FreeGameDetailsCubit>();
    bloc.getFreeGameDetails(id);
    return Scaffold(
      body: BlocConsumer<FreeGameDetailsCubit, FreeGameDetailsState>(
        listener: (context, state) {
          if (state is FreeGameDetailsError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          if (state is FreeGameDetailsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is FreeGameDetailsLoaded) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GameHeader(game: state.game),
                  SizedBox(height: 8),
                  AboutSection(game: state.game),
                  SizedBox(height: 16),
                  KButtonBar(
                    url: state.game.gameUrl,
                    entityType: EntityType.GAME,
                  ),
                  ScreenshotSection(game: state.game),
                  MinimumSpecSection(game: state.game),
                  SizedBox(height: 8),
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
