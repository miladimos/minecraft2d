import 'package:flutter/material.dart';
import 'package:minecraft2d/global/global_game_reference.dart';
import 'package:minecraft2d/global/player_data.dart';
import 'package:minecraft2d/widgets/controller_button_widget.dart';

class ControllerWidget extends StatelessWidget {
  ControllerWidget({Key? key}) : super(key: key);

  PlayerData playerData = GlobalGameReference.instance.gameReference.worldData.playerData;


  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80,
      left: 20,
      child: Row(
        children:  [
          ControllerButtonWidget(path: "assets/controller/left_button.png", onPressed: () {
            debugPrint("left ");
            // playerData.componentMotionState = ComponentMotionState.walkingLeft;
          }),
          ControllerButtonWidget(path: "assets/controller/center_button.png", onPressed: () {
            debugPrint("center ");
          }),
          ControllerButtonWidget(path: "assets/controller/right_button.png", onPressed: () {
            debugPrint("right ");
            // playerData.componentMotionState = ComponentMotionState.walkingRight;
          }),
        ],
      ),
    );
  }
}
