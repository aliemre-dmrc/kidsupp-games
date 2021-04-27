import 'package:flutter/material.dart';
import 'package:kidsupp_games/game2/maze.dart';
import 'package:kidsupp_games/game4/home.dart';

import 'game1/flip_card.dart';
import 'game3/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KidsUpp Games',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/game1": (context) => FlipcardScreen(),
        "/game2": (context) => MazeScreen(),
        "/game3": (context) => FourRowGame(),
        "/game4": (context) => Game2048(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KidsUpp Games"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () => Navigator.of(context).pushNamed("/game1"),
                  child: Text("Game 1"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () => Navigator.of(context).pushNamed("/game2"),
                  child: Text("Game 2"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () => Navigator.of(context).pushNamed("/game3"),
                  child: Text("Game 3"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () => Navigator.of(context).pushNamed("/game4"),
                  child: Text("Game 4"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
