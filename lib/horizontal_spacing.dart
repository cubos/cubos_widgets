library cubos_widgets;

import 'package:flutter/material.dart';

/// Returns a SizedBox with the given [width]
///
/// It is very useful to set a margin between widgets in a Row.
class HorizontalSpacing extends StatelessWidget {
  final double width;

  const HorizontalSpacing({
    Key? key,
    required this.width,
  })  : assert(width >= 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
