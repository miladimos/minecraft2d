import 'dart:math';

import 'package:flutter/material.dart';
import 'package:minecraft2d/widgets/controller_button_widget.dart';

class ControllerWidget extends StatelessWidget {
  const ControllerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80,
      left: 20,
      child: Row(
        children:  [
          ControllerButtonWidget(path: "assets/controller/left_button.png", onPressed: () {
            print("left ");
          }),
          ControllerButtonWidget(path: "assets/controller/center_button.png", onPressed: () {
            print("center ");
          }),
          ControllerButtonWidget(path: "assets/controller/right_button.png", onPressed: () {
            print("right ");
          }),
        ],
      ),
    );
  }
}
