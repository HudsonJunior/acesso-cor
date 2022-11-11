import 'dart:io';

import 'package:flutter/material.dart';
import 'package:heart_app/app_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  bool isLoadingWebView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.redAccent,
        child: AppDrawer(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Acesso COR'),
      ),
      body: Stack(
        children: [
          if (isLoadingWebView)
            const Positioned.fill(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          WebView(
            initialUrl: 'https://tubular-eclair-d28633.netlify.app/',
            onPageFinished: (url) {
              setState(() {
                isLoadingWebView = false;
              });
            },
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ],
      ),
    );
  }
}
