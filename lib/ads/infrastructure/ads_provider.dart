import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsProvider {
  AdsProvider._();

  static final AdsProvider _instance = AdsProvider._();

  static AdsProvider get instance => _instance;

  static String get interstitialAdUnitID {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7237005696214879/8415652194';
    } else {
      throw UnsupportedError('Unsupported Platform');
    }
  }

  final _testInterstitialAdUnitId = 'ca-app-pub-3940256099942544/1033173712';

  InterstitialAd? _interstitialAd;

  Future<bool> createInterstitialAd() async {
    const adDisplayed = false;

    await InterstitialAd.load(
      adUnitId: _testInterstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          print('ad loaded');
          // Keep a reference to the ad so you can show it later.
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error');
        },
      ),
    );

    return true;
  }

  Future<bool> showInterstitialAd() async {
    print('is null');
    print(_interstitialAd == null);

    await Future.delayed(const Duration(seconds: 1));

    if (_interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdShowedFullScreenContent: (InterstitialAd ad) {
          print('%ad onAdShowedFullScreenContent.');
        },
        onAdDismissedFullScreenContent: (InterstitialAd ad) {
          print('$ad onAdDismissedFullScreenContent.');
          _interstitialAd = null;
          ad.dispose();
        },
        onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
          print('$ad onAdFailedToShowFullScreenContent: $error');
          _interstitialAd = null;
          ad.dispose();
        },
        onAdImpression: (InterstitialAd ad) {
          print('$ad impression occurred.');
        },
      );

      _interstitialAd!.show();
    }

    return true;
  }
}
