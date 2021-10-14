import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

FirebaseAnalytics analytics = FirebaseAnalytics();
FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(
  analytics: analytics,
);

Future<void> setCurrentScreen({
  required String screenName,
  required String classOverride,
}) async {
  await analytics.setCurrentScreen(
    screenName: screenName,
    screenClassOverride: classOverride,
  );
}

Future<void> logAppOpen() async {
  await analytics.logAppOpen();
}

Future<void> logViewGame({
  required String itemId,
  required String itemName,
  required String itemCategory,
}) async {
  await analytics.logViewItem(
    itemId: itemId,
    itemName: itemName,
    itemCategory: itemCategory,
  );
}

Future<void> logFilterQuery(String term) async {
  await analytics.logSearch(searchTerm: term);
}

Future<void> logShare({
  required String contentType,
  required String itemId,
  required String method,
}) async {
  await analytics.logShare(
    contentType: contentType,
    itemId: itemId,
    method: method,
  );
}

Future<void> logActionButtonPressed({
  required String id,
  required String title,
}) async {
  await analytics.logEvent(
    name: 'Action Button Pressed',
    parameters: {
      'id': id,
      'title': title,
    },
  );
}
