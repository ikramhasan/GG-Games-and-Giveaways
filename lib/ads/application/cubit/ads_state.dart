part of 'ads_cubit.dart';

@freezed
class AdsState with _$AdsState {
  const factory AdsState({
    required bool interstitialAdLoading,
    required bool interstitialAdLoaded,
    required bool interstitialAdLoadFailed,
    required bool showedInterstitialAd,
    required bool interstitialAdDismissed,
  }) = _AdsState;

  factory AdsState.initial() => const _AdsState(
        interstitialAdLoading: false,
        interstitialAdLoaded: false,
        interstitialAdLoadFailed: false,
        showedInterstitialAd: false,
        interstitialAdDismissed: false,
      );
}
