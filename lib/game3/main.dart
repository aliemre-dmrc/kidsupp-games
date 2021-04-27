import 'package:flutter/material.dart';

import 'home_page.dart';
import 'match_page.dart';

class FourRowGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter fiar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      onGenerateRoute: (settings) {
        final args = settings.arguments as Map<String, dynamic>;
        if (settings.name == '/match') {
          return MaterialPageRoute(
            builder: (context) => MatchPage(
              mode: args['mode'],
            ),
          );
        }

        return null;
      },
    );
  }
}
