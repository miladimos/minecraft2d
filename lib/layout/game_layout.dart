import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:minecraft2d/layout/controller_widget.dart';
import 'package:minecraft2d/main_game.dart';

class GameLayout extends StatelessWidget {
  const GameLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        // main game
        GameWidget(game: MainGame()),

        const ControllerWidget(),
      ],
    );
  }
}
