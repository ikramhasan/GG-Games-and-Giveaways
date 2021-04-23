import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/game_entity/data/cubit/game_entity_cubit.dart';

class GameEntityPage extends StatelessWidget {
  final int id;

  const GameEntityPage({Key? key,required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<GameEntityCubit>();
    bloc.getGameEntity(id);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<GameEntityCubit, GameEntityState>(
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
              return Image.network(state.game.thumbnail);
            }
            return Container();
          },
        ),
      ),
    );
  }
}
