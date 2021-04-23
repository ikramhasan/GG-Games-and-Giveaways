import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/free_games/cubit/free_games_cubit.dart';
import 'package:free_games_giveaways/game_entity/data/cubit/game_entity_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/presentation/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FreeGamesCubit(),
        ),BlocProvider(
          create: (context) => GameEntityCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'GG',
        theme: ThemeData(
          brightness: Brightness.dark,
          canvasColor: const Color(0xFF171717),
          accentColor: const Color(0xFF52EE01),
          cardColor: const Color(0xFF22252B),
          primarySwatch: Colors.yellow,
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        home: HomePage(),
      ),
    );
  }
}
