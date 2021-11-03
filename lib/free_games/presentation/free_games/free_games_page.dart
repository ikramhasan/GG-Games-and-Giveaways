import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_games_giveaways/app/presentation/about_page.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import '../../../app/utils/show_error.dart';
// import 'package:getwidget/components/loader/gf_loader.dart';
// import 'package:getwidget/getwidget.dart';

// import '../../../app/presentation/about_page.dart';
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
            icon: const FaIcon(
              FontAwesomeIcons.filter,
              size: 18,
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
            icon: const FaIcon(
              FontAwesomeIcons.infoCircle,
              size: 22,
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
              return ListView.builder(
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
              );
            }
            return const Center(
              child: GFLoader(),
            );
          },
        ),
      ),
    );
  }
}
