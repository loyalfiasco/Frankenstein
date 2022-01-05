import 'package:flutter/material.dart';

class Frankenstein extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final EdgeInsets? padding;
  final Decoration? decoration;

  const Frankenstein({
    required this.child,
    this.onTap,
    this.padding,
    this.decoration,
    Key? key
  }) : super(key: key);
  
  GestureDetector _buildGestureDetector(Widget child) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }

  Padding _buildPadding(Widget child) {
    return Padding(
      padding: padding!,
      child: child,
    );
  }

  DecoratedBox _buildDecoratedBox(Widget child) {
    return DecoratedBox(
      decoration: decoration!,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _child = child;

    if (onTap != null) {
      _child = _buildGestureDetector(_child);
    }

    if (padding != null) {
      _child = _buildPadding(_child);
    }

    if (decoration != null) {
      _child = _buildDecoratedBox(_child);
    }

    return _child;
  }
}