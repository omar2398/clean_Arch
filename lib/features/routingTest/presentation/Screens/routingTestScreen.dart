import 'package:flutter/material.dart';
import 'package:trainnnig/core/utils/appStrings.dart';

class routingTestScreen extends StatefulWidget {
  const routingTestScreen({super.key});

  @override
  State<routingTestScreen> createState() => _routingTestScreenState();
}

class _routingTestScreenState extends State<routingTestScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          appStrings.routingTestScreen,
          style: TextStyle(
            fontSize: 30
          ),
        ),
      ),
    );
  }
}
