library cubos_widgets;
import 'package:flutter/material.dart';

/// Returns a SizedBox with the given [height]
///
/// It is very useful to set a margin between widgets in a Column.
class VerticalSpacing extends StatelessWidget {
  final double height;

  const VerticalSpacing(this.height): assert(height >= 0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}