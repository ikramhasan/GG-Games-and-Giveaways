import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/app/presentation/about_page.dart';
import 'package:free_games_giveaways/giveaways/data/cubit/giveaways_cubit.dart';
import 'package:free_games_giveaways/giveaways/presentation/components/giveaway_card.dart';

class GiveawaysPage extends StatelessWidget {
  const GiveawaysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giveaways'),
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
                  final giveaway = state.giveawaysList[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 8),
                    child: GiveawayCard(giveaway: giveaway),
                  );
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
