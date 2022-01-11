import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class HtmlWidget extends StatelessWidget {
  final String data;
  final TextStyle textStyle;

  const HtmlWidget({
    Key? key,
    required this.data,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Html(
      data: '<div>$data</div>',
      style: {
        'div': Style(
          color: textStyle.color,
          fontSize: FontSize(textStyle.fontSize),
          fontWeight: textStyle.fontWeight,
        )
      },
      onLinkTap: (url, context, attr, ele) => _onLinkTap(url ?? ''),
    );
  }

  void _onLinkTap(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
