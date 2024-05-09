import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to My App',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/http_request_screen');
              },
              child: Text('HTTP Request'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home2');
              },
              child: Text('Screen 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home3');
              },
              child: Text('Screen 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home4');
              },
              child: Text('Screen 4'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home5');
              },
              child: Text('Screen 5'),
            ),
          ],
        ),
      ),
    );
  }
}