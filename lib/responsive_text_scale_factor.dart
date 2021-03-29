library cubos_widgets;

import 'package:flutter/material.dart';

/// You can group all of your widgets or a specific widget to define the maxTextScaleFactor and minTextScaleFactor
///
/// It is very useful when you need to implement accessibility to the app and not break the design of your app layout
/// You can wrap all your page with this Widget to make all Text's with responsive scale factor
/// Example of use:
///
/// ```dart
/// ResponsiveTextScaleFactor(
///   minScaleFactor: 0.5,
///   maxScaleFactor: 2.0,
///   child: Text('Hello world'),
/// ),
/// ```

class ResponsiveTextScaleFactor extends StatelessWidget {
  final Widget _child;
  final double _minScaleFactor;
  final double _maxScaleFactor;

  const ResponsiveTextScaleFactor({
    Key key,
    @required Widget child,
    double minScaleFactor = 0.8,
    double maxScaleFactor = 1.2,
  })  : _child = child,
        _minScaleFactor = minScaleFactor,
        _maxScaleFactor = maxScaleFactor,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return MediaQuery(
      data: data.copyWith(
        textScaleFactor:
            data.textScaleFactor.clamp(_minScaleFactor, _maxScaleFactor),
      ),
      child: _child,
    );
  }
}
