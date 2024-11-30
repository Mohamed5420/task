import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomAttachedAnimation extends StatefulWidget {
  final AnimationController controller;
  final Widget child;

  const CustomAttachedAnimation(
      {Key? key, required this.controller, required this.child})
      : super(key: key);

  @override
  CustomAttachedAnimationState createState() => CustomAttachedAnimationState();
}

class CustomAttachedAnimationState extends State<CustomAttachedAnimation> {
  late Animation<double> animation;

  @override
  void initState() {
    animation =
        CurvedAnimation(parent: widget.controller, curve: Curves.easeInOut);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.controller,
        builder: (BuildContext context, Widget? child) {
          return ClipRect(
            child: Align(
              heightFactor: math.max(animation.value, 0.0),
              child: child,
            ),
          );
        },
        child: widget.child,
        );
    }
}