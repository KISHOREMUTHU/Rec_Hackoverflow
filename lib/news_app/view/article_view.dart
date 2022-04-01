import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String articleUrl;

  const ArticleView({Key? key, required this.articleUrl}) : super(key: key);

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: widget.articleUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
