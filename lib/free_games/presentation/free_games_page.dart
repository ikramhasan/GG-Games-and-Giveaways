import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/free_games/cubit/free_games_cubit.dart';
import 'package:free_games_giveaways/free_games/presentation/components/game_card.dart';
import 'package:free_games_giveaways/game_entity/presentation/game_enity_page.dart';

class FreeGamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FreeGamesCubit>();
    bloc.getFreeGamesList();
    return Scaffold(
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
                child: CircularProgressIndicator(),
              );
            }
            if (state is FreeGamesLoaded) {
              return ListView.builder(
                itemCount: state.freeGamesList.length,
                itemBuilder: (context, index) {
                  final game = state.freeGamesList[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GameEntityPage(id: game.id),
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
