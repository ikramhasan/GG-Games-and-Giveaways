import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/app/wrapper.dart';
import 'package:free_games_giveaways/free_games/cubit/free_games_cubit.dart';
import 'package:free_games_giveaways/free_games/cubit/free_game_detail_cubit.dart';
import 'package:free_games_giveaways/giveaways/data/cubit/giveaways_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FreeGamesCubit(),
        ),
        BlocProvider(
          create: (context) => FreeGameDetailsCubit(),
        ),
        BlocProvider(
          create: (context) => GiveawaysCubit(),
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
          fontFamily: GoogleFonts.montserrat().fontFamily,
          appBarTheme: AppBarTheme(
            color: const Color(0xFF22252B),
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        home: Wrapper(),
      ),
    );
  }
}
