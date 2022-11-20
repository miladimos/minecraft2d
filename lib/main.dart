import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:minecraft2d/layout/game_layout.dart';
import 'package:minecraft2d/main_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(
    home: GameLayout(),
  ));
}
