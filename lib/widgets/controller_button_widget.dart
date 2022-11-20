import 'package:flutter/material.dart';

class ControllerButtonWidget extends StatefulWidget {
  final String path;
  final VoidCallback onPressed;
  const ControllerButtonWidget({Key? key, required this.path, required this.onPressed}) : super(key: key);

  @override
  State<ControllerButtonWidget> createState() => _ControllerButtonWidgetState();
}

class _ControllerButtonWidgetState extends State<ControllerButtonWidget> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            isPressed = true;
            widget.onPressed;
          });
        },
        onTapUp: (_) {
          setState(() {
            isPressed = false;
          });
        },
        child: Opacity(
          opacity: isPressed ? 0.5 : 0.8,
          child: SizedBox(
            width: screenSize.width/17,
            height: screenSize.height/17,
            child: Image.asset(widget.path),
          ),
        ),
      ),
    );
  }
}
