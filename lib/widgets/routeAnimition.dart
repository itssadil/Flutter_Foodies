import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RouteAnimation extends PageRouteBuilder {
  final Widget widget;
  RouteAnimation({required this.widget})
      : super(
          transitionDuration: Duration(seconds: 2),
          reverseTransitionDuration: Duration(seconds: 2),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation =
                CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
            return ScaleTransition(
              scale: animation,
              alignment: Alignment.center,
              child: child,
            );
          },
          pageBuilder: (context, animation, secondaryAnimation) => widget,
        );
}
