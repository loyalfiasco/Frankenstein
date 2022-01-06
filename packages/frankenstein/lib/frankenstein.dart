import 'package:flutter/material.dart';

class ZZ extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final EdgeInsets? padding;
  final Decoration? decoration;
  final double? height;
  final double? width;
  final int? flex;
  final bool? canScroll;

  const ZZ(
      {required this.child,
      this.onTap,
      this.padding,
      this.decoration,
      this.height,
      this.width,
      this.flex,
      this.canScroll,
      Key? key})
      : super(key: key);

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

  SingleChildScrollView _buildScrollView(Widget child) {
    return SingleChildScrollView(
      child: child,
    );
  }

  SizedBox _buildSizedBox(Widget child) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }

  Expanded _buildExpanded(Widget child) {
    return Expanded(
      flex: flex!,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _child = child;

    if (padding != null) {
      _child = _buildPadding(_child);
    }

    if (decoration != null) {
      _child = _buildDecoratedBox(_child);
    }

    if (onTap != null) {
      _child = _buildGestureDetector(_child);
    }

    if (canScroll != null && canScroll == true) {
      _child = _buildScrollView(_child);
    }

    if (flex != null) {
      _child = _buildExpanded(_child);
    } else if (width != null || height != null) {
      _child = _buildSizedBox(_child);
    }

    return _child;
  }
}
