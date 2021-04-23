import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/free_games/cubit/free_games_cubit.dart';

class FreeGamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FreeGamesCubit>();
    bloc.getFreeGamesList();
    return Scaffold(
      body: BlocConsumer<FreeGamesCubit, FreeGamesState>(
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

                return Image.network(game.thumbnail);
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
