import 'package:flutter/material.dart';

import 'features/card_daily.dart';
import 'features/daily_podcast.dart';
import 'features/list_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'glyadgzl',
      theme: ThemeData.light(),
      home: DailyPodcast(),
    );
  }
}
