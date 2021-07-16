import 'package:flutter/material.dart';
import 'package:youtube_search_app/api.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 35,
          child: Image.asset('images/youtube_logo.png'),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          Align(
            child: Text('0',
            style: TextStyle(
              fontSize: 18
            ),),
            alignment: Alignment.center,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
