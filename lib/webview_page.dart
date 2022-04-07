import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatelessWidget {
  const WebviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Icon(Icons.arrow_back_ios,
              color: Colors.grey)),
              backgroundColor: Colors.white,
              elevation: 0,
        ),
        body: WebView(
          initialUrl: 'https://youtube.com/',
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
