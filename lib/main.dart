import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';


Future<void> main(List<String> args) async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      
    );

    FirebaseAnalytics analytics = FirebaseAnalytics.instance;

    // collects various events and user properties automatically
     await analytics.app.setAutomaticDataCollectionEnabled(true);

     // optimizes the memory and resource usage of the sdk automatically
    await analytics.app.setAutomaticResourceManagementEnabled(true);

    await analytics.logBeginCheckout(
        value: 10.0,
        currency: 'USD',
        items: [
          AnalyticsEventItem(itemName: 'Socks', itemId: 'xjw73ndnw', price: 10),
        ],
        coupon: '10PERCENTOFF');

}
