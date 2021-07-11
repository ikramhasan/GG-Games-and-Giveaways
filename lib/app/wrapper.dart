import 'package:flutter/material.dart';
import 'package:free_games_giveaways/giveaways/data/cubit/giveaways_cubit.dart';
import 'package:free_games_giveaways/home/presentation/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/free_games/cubit/free_games_cubit.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<FreeGamesCubit>().getFreeGamesList();
    context.read<GiveawaysCubit>().getGiveawaysList();
    return HomePage();
  }
}
