import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'package:WebView3/widget/messaging_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    body: MessagingWidget();
    return MaterialApp(
      home: SplashScreen(),
    );

    Scaffold(
      body: MessagingWidget(),
    );
  }

}
