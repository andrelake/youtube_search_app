import 'package:flutter/material.dart';
import 'package:youtube_search_app/api.dart';
import 'package:youtube_search_app/screens/home.dart';


void main() {

  Api api = Api();
  api.search('banana');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutube',
      home: Home(),
    );
  }
}

