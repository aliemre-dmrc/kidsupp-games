import 'package:flutter/material.dart';

import 'match_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            TextButton(
              child: Text(
                'VS PLAYER',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/match',
                  arguments: {
                    'mode': Mode.PVP,
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
