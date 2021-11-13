import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_games_giveaways/app/presentation/components/gg_progress_indicator.dart';
import '../../app/presentation/about_page.dart';
import '../../app/utils/show_error.dart';
import '../data/cubit/game_deals_cubit.dart';

class GameDealPage extends StatelessWidget {
  const GameDealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Deals'),
        actions: [
          // IconButton(
          //   icon: const FaIcon(
          //     FontAwesomeIcons.filter,
          //     size: 18,
          //   ),
          //   onPressed: () {
          //     showModalBottomSheet(
          //       context: context,
          //       isScrollControlled: true,
          //       barrierColor: Colors.black.withOpacity(0.8),
          //       builder: (_) => G(),
          //     );
          //   },
          // ),
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.infoCircle,
              size: 22,
            ),
            onPressed: () {
              showDialog(
                context: context,
                barrierColor: Colors.black.withOpacity(0.8),
                builder: (context) => AlertDialog(
                  backgroundColor: Theme.of(context).cardColor,
                  content: AboutPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<GameDealsCubit, GameDealsState>(
          builder: (context, state) {
            if (state is GameDealsLoaded) {
              return ListView.builder(
                itemCount: state.gameDeals.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        state.gameDeals[index].thumb,
                        height: 60,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          width: MediaQuery.of(context).size.width - 148,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(state.gameDeals[index].title),
                              Text(state.gameDeals[index].salePrice),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            }

            if (state is GameDealsLoading) {
              return const GGProgressIndicator();
            }
            return Container();
          },
          listener: (context, state) {
            if (state is GameDealsError) {
              showError(context, state.message);
            }
          },
        ),
      ),
    );
  }
}
