import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:minecraft2d/global/global_game_reference.dart';
import 'package:minecraft2d/global/player_data.dart';

class PlayerComponent extends SpriteAnimationComponent{
  final int speed = 10;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    SpriteSheet playerSpriteSheet = SpriteSheet(image: await Flame.images.load("sprite_sheets/player/player_walking_sprite_sheet.png"), srcSize: Vector2.all(60));
    animation = playerSpriteSheet.createAnimation(row: 0, stepTime: 0.1);
    size = Vector2(100, 100);
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (GlobalGameReference.instance.gameReference.worldData.playerData.componentMotionState == ComponentMotionState.walkingLeft) {
      position.x -= speed;
    }else if (GlobalGameReference.instance.gameReference.worldData.playerData.componentMotionState == ComponentMotionState.walkingRight) {
      position.x += speed;
    }

  }
}