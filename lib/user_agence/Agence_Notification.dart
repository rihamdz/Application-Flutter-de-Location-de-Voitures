import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AgenceNotificationView extends StatefulWidget {
  const AgenceNotificationView({super.key});

  @override
  State<AgenceNotificationView> createState() => _AgenceNotificationViewState();
}

class _AgenceNotificationViewState extends State<AgenceNotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("notification"),
    );
  }
}
