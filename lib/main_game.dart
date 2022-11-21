import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:minecraft2d/components/player_component.dart';
import 'package:minecraft2d/global/global_game_reference.dart';
import 'package:minecraft2d/global/world_data.dart';
import 'package:get/get.dart';

class MainGame extends FlameGame {

  final WorldData worldData;

  MainGame({required this.worldData}) {
    globalGameReference.gameReference = this;
  }

  GlobalGameReference globalGameReference = Get.put(GlobalGameReference());
  PlayerComponent playerComponent = PlayerComponent();

  @override
  Future<void>? onLoad() async{
    super.onLoad();

    add(playerComponent);
  }

}