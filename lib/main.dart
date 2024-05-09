import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/http_request_screen.dart';
import 'package:flutter_application_1/screens/slashscreen.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Screen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/http_request_screen': (context) => MyHttpRequestPage(screenName: 'HTTP Request'),
        '/home2': (context) => HomeScreen(screenName: 'Screen 2'),
        '/home3': (context) => HomeScreen(screenName: 'Screen 3'),
        '/home4': (context) => HomeScreen(screenName: 'Screen 4'),
        '/home5': (context) => HomeScreen(screenName: 'Screen 5'),
      },
    );
  }
}



