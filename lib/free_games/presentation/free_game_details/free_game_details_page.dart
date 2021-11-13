import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/app/presentation/components/gg_progress_indicator.dart';
import 'package:free_games_giveaways/free_games/presentation/free_game_details/components/heading_image.dart';
import '../../../app/utils/show_error.dart';
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
            showError(context, state.message);
          }
        },
        builder: (context, state) {
          if (state is FreeGameDetailsLoading) {
            return const GGProgressIndicator();
          }
          if (state is FreeGameDetailsLoaded) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInDown(
                    child: HeadingImage(imageUrl: state.game.thumbnail!),
                  ),
                  FadeInUp(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        GameHeader(game: state.game),
                        const SizedBox(height: 8),
                        AboutSection(game: state.game),
                        const SizedBox(height: 16),
                        KButtonBar(
                          title: state.game.title!,
                          url: state.game.gameUrl!,
                          entityType: EntityType.GAME,
                        ),
                        ScreenshotSection(game: state.game),
                        MinimumSpecSection(game: state.game),
                        const SizedBox(height: 32),
                      ],
                    ),
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
