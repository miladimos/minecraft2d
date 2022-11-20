import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:minecraft2d/components/player_component.dart';


class MainGame extends FlameGame {

  @override
  Future<void>? onLoad() {

    add(PlayerComponent());

  }

}