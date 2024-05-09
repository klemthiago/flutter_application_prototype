import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String screenName;

  const HomeScreen({required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenName),
      ),
      body: Center(
        child: Text(
          'This is $screenName',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}