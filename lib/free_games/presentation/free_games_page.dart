import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/free_games/cubit/free_games_cubit.dart';
import 'package:free_games_giveaways/free_games/data/models/game.dart';

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

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      height: 192,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  game.thumbnail,
                                  height: 192,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                height: 192,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [0, 0.5, 1],
                                    colors: [
                                      Colors.black.withOpacity(0.3),
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.3),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      game.title,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Expanded(
                                      child: Text(
                                        game.shortDescription,
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      height: 16,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).accentColor,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Center(
                                        child: Text(
                                          game.platform == Platform.PC_WINDOWS
                                              ? 'PC'
                                              : 'PC / BROWSER',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
