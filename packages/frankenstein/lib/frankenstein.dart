import 'package:flutter/material.dart';

class ZZ extends StatelessWidget {
  /// The bottom level child widget to be wrapped
  final Widget child;

  /// Specified whether a GestureDetector should be created with the provided onTap callback
  final void Function()? onTap;

  /// Creates a Padding widget with the specified EdgeInsets outside of the DecoratedBox
  final EdgeInsets? margin;

  /// Creates a Padding widget with the specified EdgeInsets inside of the DecoratedBox
  final EdgeInsets? padding;

  /// Encapsulates the child with a DecoratedBox using the passed in Decoration
  final Decoration? decoration;

  /// Specifies the height of the wrapper. Note: Cannot be used with the flex property
  final double? height;

  /// Specifies the width of the wrapper. Note: Cannot be used with the flex property
  final double? width;

  /// Specifies the flex property of an Expanded widget. Note: cannot be used with the width/height properties
  final int? flex;

  /// Indicates whether the child should be wrapped with a SingleChildScrollView
  final bool? canScroll;

  /// Creates the desired Widget hierarchy based on the provided arguments.
  ///
  /// Widgets are created in the following order
  ///  - Padding (margin)
  ///  - DecoratedBox
  ///  - Padding (padding)
  ///  - GestureDetector
  ///  - SingleChildScrollView
  ///  - Expanded / SizedBox
  ///
  /// Understanding the order is helpful in understanding the outcome when multiple properties are defined.
  const ZZ(
      {required this.child,
      this.onTap,
      this.margin,
      this.padding,
      this.decoration,
      this.height,
      this.width,
      this.flex,
      this.canScroll,
      Key? key})
      : super(key: key);

  // Generates the GestureDetector
  GestureDetector _buildGestureDetector(Widget child) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }

  // Generates the Padding
  Padding _buildPadding(Widget child, EdgeInsetsGeometry padding) {
    return Padding(
      padding: padding,
      child: child,
    );
  }

  // Generates the DecoratedBox
  DecoratedBox _buildDecoratedBox(Widget child) {
    return DecoratedBox(
      decoration: decoration!,
      child: child,
    );
  }

  // Generates the SingleChildScrollView
  SingleChildScrollView _buildScrollView(Widget child) {
    return SingleChildScrollView(
      child: child,
    );
  }

  // Generates the SizedBox
  SizedBox _buildSizedBox(Widget child) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }

  // Generates the Expanded
  Expanded _buildExpanded(Widget child) {
    return Expanded(
      flex: flex!,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Local property to store the composed Widget return
    Widget _child = child;

    // If the margin argument is not null, build the outside Padding
    if (margin != null) {
      _child = _buildPadding(_child, margin!);
    }

    // If the decoration argument is not null, built the DecoratedBox
    if (decoration != null) {
      _child = _buildDecoratedBox(_child);
    }

    // If the padding argument is not null, build the inside Padding
    if (padding != null) {
      _child = _buildPadding(_child, padding!);
    }

    // If the onTap argument is not null, build the GestureDetector
    if (onTap != null) {
      _child = _buildGestureDetector(_child);
    }

    // If the canScroll argument is true, build the SingleChildScrollView
    if (canScroll != null && canScroll == true) {
      _child = _buildScrollView(_child);
    }

    // If the flex argument is not null, build the Expanded; otherwise if the width or height arguments are not null, build the SizedBox
    if (flex != null) {
      _child = _buildExpanded(_child);
    } else if (width != null || height != null) {
      _child = _buildSizedBox(_child);
    }

    // Return the composed Widget
    return _child;
  }
}
