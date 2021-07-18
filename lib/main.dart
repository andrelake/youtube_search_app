import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:youtube_search_app/api.dart';
import 'package:youtube_search_app/screens/home.dart';

Future main() async {

  await dotenv.load(fileName: ".env"); 

  Api api = Api();
  api.search('banana', dotenv.env['API_KEY'].toString());

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

