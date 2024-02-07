// ignore_for_file: library_private_types_in_public_api

/*

Starting from this line downward, all commented-out code lines are
kept as evidence of attempts to fetch ip address
dynamically based whether or not the app is running on the web

Co-signed, ARINDAMA

*/

// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:network_info_plus/network_info_plus.dart';
// import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = '';
  // String ip = Platform.isAndroid?'10.0.2.2':'localhost';
  String ip = kIsWeb?'localhost':'10.0.2.2';

  Future<void> fetchMessage() async {
    // final String ip = await NetworkInfo().getWifiIP() ?? 'localhost';
    final http.Response response =
        // await http.get(Uri.parse('http://localhost:8000/api/hello'));
        // await http.get(Uri.parse('http://10.0.2.2:8000/api/hello'));
        await http.get(Uri.parse('http://$ip:8000/api/hello'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        message = data['message'];
      });
    } else {
      setState(() {
        message = 'Failed to fetch message';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMessage();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Laravel Hello World'),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}
