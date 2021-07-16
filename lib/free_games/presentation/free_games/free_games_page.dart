import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/app/presentation/about_page.dart';
import 'package:free_games_giveaways/free_games/cubit/free_games_cubit.dart';
import 'package:free_games_giveaways/free_games/presentation/free_games/components/game_card.dart';
import 'package:free_games_giveaways/free_games/presentation/game_entity/free_game_details_page.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/getwidget.dart';

class FreeGamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Free Games'),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.info),
            onPressed: () {
              showDialog(
                context: context,
                barrierColor: Colors.black.withOpacity(0.8),
                builder: (_) => AlertDialog(
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
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            if (state is FreeGamesLoading) {
              return const Center(
                child: GFLoader(
                  type: GFLoaderType.android,
                ),
              );
            }
            if (state is FreeGamesLoaded) {
              return ListView.builder(
                itemCount: state.freeGamesList.length,
                padding: EdgeInsets.only(top: 16),
                itemBuilder: (context, index) {
                  final game = state.freeGamesList[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FreeGameDetailsPage(id: game.id),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: GameCard(game: game),
                    ),
                  );
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
