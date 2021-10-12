import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'utils/analytics.dart';
import '../game_deals/data/cubit/game_deals_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../free_games/data/cubit/free_game_detail_cubit.dart';
import '../free_games/data/cubit/free_games_cubit.dart';
import '../giveaways/data/cubit/giveaways_cubit.dart';
import 'wrapper.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FreeGamesCubit>(
          create: (context) => FreeGamesCubit(),
        ),
        BlocProvider<FreeGameDetailsCubit>(
          create: (context) => FreeGameDetailsCubit(),
        ),
        BlocProvider<GiveawaysCubit>(
          create: (context) => GiveawaysCubit(),
        ),
        BlocProvider<GameDealsCubit>(
          create: (context) => GameDealsCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'GG',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          canvasColor: const Color(0xFF171717),
          accentColor: const Color(0xFF52EE01),
          cardColor: const Color(0xFF22252B),
          primarySwatch: Colors.yellow,
          fontFamily: GoogleFonts.merriweather().fontFamily,
          appBarTheme: const AppBarTheme(
            color: Color(0xFF22252B),
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        navigatorObservers: <NavigatorObserver>[observer],
        home: const Wrapper(),
      ),
    );
  }
}
