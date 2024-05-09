import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHttpRequestPage extends StatefulWidget {
  
  final String screenName;
  const MyHttpRequestPage({required this.screenName});

  @override
  _MyHttpRequestPageState createState() => _MyHttpRequestPageState();
}

class _MyHttpRequestPageState extends State<MyHttpRequestPage> {
  
  String _responseData = '';

  void _makeRequest() async {
    // Replace the URL with your own endpoint
    var url = 'https://dummyjson.com/products/1';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      setState(() {
        _responseData = jsonResponse.toString();
      });
    } else {
      setState(() {
        _responseData = 'Request failed with status: ${response.statusCode}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screenName'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Response:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              _responseData,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _makeRequest,
        tooltip: 'Make Request',
        child: Icon(Icons.http_rounded),
      ),
    );
  }
}