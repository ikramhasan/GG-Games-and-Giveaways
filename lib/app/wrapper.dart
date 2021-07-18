import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../free_games/data/cubit/free_games_cubit.dart';
import '../giveaways/data/cubit/giveaways_cubit.dart';
import 'presentation/home_page.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<FreeGamesCubit>().getFreeGamesList();
    context.read<GiveawaysCubit>().getGiveawaysList();
    return HomePage();
  }
}
