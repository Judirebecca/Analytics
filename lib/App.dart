import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'Helpers/AppNavigations/NavigationConfig.dart';
import 'Helpers/AppNavigations/NavigationHelpers.dart';
import 'Helpers/Resources/Styles/Styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    return MaterialApp(
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      theme: Styles.lightTheme,
      darkTheme: Styles.darkTheme,
      onGenerateRoute: AppRoute(
        initialPage: Pages.homeScreenConfig,
        initialPageData: "",
      ).onGenerateRoute,
    );
  }
}
