import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'ads_state.dart';
part 'ads_cubit.freezed.dart';

class AdsCubit extends Cubit<AdsState> {
  AdsCubit() : super(AdsState.initial());

  InterstitialAd? _interstitialAd;
  final _interstitialAdUnitId = 'ca-app-pub-7237005696214879/8415652194';
  final _testInterstitialAdUnitId = 'ca-app-pub-3940256099942544/1033173712';

  Future<void> initializeInterstitialAd() async {
    emit(state.copyWith(interstitialAdLoading: true));
    await InterstitialAd.load(
      adUnitId:
          kReleaseMode ? _interstitialAdUnitId : _testInterstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          emit(state.copyWith(interstitialAdLoading: false));
          emit(state.copyWith(interstitialAdLoaded: true));
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (LoadAdError error) {
          emit(state.copyWith(interstitialAdLoading: false));
          emit(state.copyWith(interstitialAdLoadFailed: true));
        },
      ),
    );
  }

  Future<void> showInterstitialAd() async {
    if (state.interstitialAdLoaded) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdShowedFullScreenContent: (InterstitialAd ad) {
          emit(state.copyWith(showedInterstitialAd: true));
        },
        onAdDismissedFullScreenContent: (InterstitialAd ad) {
          emit(state.copyWith(interstitialAdDismissed: true));
          _interstitialAd = null;
          ad.dispose();
        },
        onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
          _interstitialAd = null;
          ad.dispose();
        },
        onAdImpression: (InterstitialAd ad) {},
      );

      _interstitialAd!.show();
    }
  }

  void flush() {
    emit(AdsState.initial());
  }

  @override
  Future<void> close() {
    _interstitialAd?.dispose();
    _interstitialAd = null;
    emit(AdsState.initial());
    return super.close();
  }
}
