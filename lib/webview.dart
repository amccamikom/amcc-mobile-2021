import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://www.youtube.com/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
