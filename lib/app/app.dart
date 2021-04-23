import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/free_games/cubit/free_games_cubit.dart';

import '../home/presentation/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FreeGamesCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'GG',
        theme: ThemeData(
          brightness: Brightness.dark,
          canvasColor: const Color(0xFF171717),
          accentColor: const Color(0xFFFECF03),
          cardColor: const Color(0xFF1F1F1F),
          primarySwatch: Colors.yellow,
        ),
        home: HomePage(),
      ),
    );
  }
}
