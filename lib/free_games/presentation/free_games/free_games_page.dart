import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_games_giveaways/app/presentation/components/gg_progress_indicator.dart';

import '../../../app/presentation/about_page.dart';
import '../../../app/utils/show_error.dart';
import '../../data/cubit/free_games_cubit.dart';
import 'components/free_game_filter_widget.dart';
import 'components/game_card.dart';

class FreeGamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Free Games'),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/funnel-outline.svg',
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => FreeGameFilterWidget(),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/information-circle-outline.svg',
              height: 24,
              width: 24,
              color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                context: context,
                barrierColor: Colors.black.withOpacity(0.8),
                builder: (context) => AlertDialog(
                  backgroundColor: Theme.of(context).cardColor,
                  content: AboutPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<FreeGamesCubit, FreeGamesState>(
          listener: (context, state) {
            if (state is FreeGamesError) {
              showError(context, state.message);
            }
          },
          builder: (context, state) {
            if (state is FreeGamesLoaded) {
              return FadeInUp(
                child: ListView.builder(
                  key: const PageStorageKey('free-games-list'),
                  itemCount: state.freeGamesList.length,
                  padding: const EdgeInsets.only(top: 16),
                  itemBuilder: (context, index) {
                    final game = state.freeGamesList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: GameCard(game: game),
                    );
                  },
                ),
              );
            }
            return const GGProgressIndicator();
          },
        ),
      ),
    );
  }
}
