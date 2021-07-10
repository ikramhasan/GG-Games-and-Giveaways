import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/giveaways/data/cubit/giveaways_cubit.dart';

class GiveawaysPage extends StatelessWidget {
  const GiveawaysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<GiveawaysCubit>();
    bloc.getGiveawaysList();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<GiveawaysCubit, GiveawaysState>(
          builder: (context, state) {
            if (state is GiveawaysLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is GiveawaysLoaded) {
              return ListView.builder(
                itemCount: state.giveawaysList.length,
                itemBuilder: (context, index) {
                  return Text(state.giveawaysList[index].title);
                },
              );
            }

            return Container();
          },
          listener: (context, state) {
            if (state is GiveawaysError) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
        ),
      ),
    );
  }
}
