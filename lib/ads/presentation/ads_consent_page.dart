// ignore_for_file: avoid_escaping_inner_quotes

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_games_giveaways/ads/application/cubit/ads_cubit.dart';
import 'package:free_games_giveaways/app/utils/analytics.dart';
import 'package:free_games_giveaways/app/utils/launch_url.dart';

class AdsConsentPage extends StatelessWidget {
  const AdsConsentPage({
    Key? key,
    required this.url,
    required this.title,
  }) : super(key: key);

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: BlocConsumer<AdsCubit, AdsState>(
          listener: (context, state) {
            if (state.interstitialAdDismissed) {
              launchURL(url);
              logActionButtonPressed(id: url, title: title);
              context.read<AdsCubit>().flush();
              context.read<AdsCubit>().initializeInterstitialAd();
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
                const SizedBox(height: 32),
                const Text(
                  'The app has been free for the longest amount of time.'
                  ' And I don\'t want to show you ads forcefully.'
                  ' However, keeping the server active and maintaining the app costs money.'
                  ' I would highly appreciate if you watch an ad before proceeding.'
                  ' You can totally skip it if you want. Thanks.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: state.interstitialAdLoading
                      ? null
                      : () {
                          context.read<AdsCubit>().showInterstitialAd();
                        },
                  child: state.interstitialAdLoading
                      ? const SizedBox(
                          height: 16,
                          width: 16,
                          child: CircularProgressIndicator(),
                        )
                      : const Text(
                          'Continue with ads',
                          style: TextStyle(color: Colors.white),
                        ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    launchURL(url);
                    logActionButtonPressed(id: url, title: title);
                  },
                  child: const Text(
                    'Continue without ads',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
