library cubos_widgets;

import 'package:flutter/material.dart';

/// Returns a SizedBox with the given [height]
///
/// It is very useful to set a margin between widgets in a Column.
class VerticalSpacing extends StatelessWidget {
  final double height;
  const VerticalSpacing(this.height, {Key? key})
      : assert(height >= 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
