import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class MessagingWidget extends StatefulWidget {
  @override
  _MessagingWidgetState createState() => _MessagingWidgetState();
}

class _MessagingWidgetState extends State<MessagingWidget> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
      _firebaseMessaging.configure (
        onMessage: (Map<String, dynamic> message) async {
          print("onMessage: $message");
        },
        onLaunch: (Map<String, dynamic> message) async {
          print("onLaunch: $message");
        },
        onResume: (Map<String, dynamic> message) async {
          print("onResume: $message");
        },
      );
      _firebaseMessaging.requestNotificationPermissions (
          const IosNotificationSettings (sound: true, badge: true, alert: true));
    }

  @override
  Widget build(BuildContext context) => Container();
}