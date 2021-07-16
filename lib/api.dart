import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dotenv/dotenv.dart';
import 'package:youtube_search_app/models/video.dart';

class Api {

  search(String search) async {

    http.Response response = await http.get(
        Uri.parse(
        "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=${env['API_KEY']}&maxResults=10"
      )
    );

    decode(response);
  }

  decode(http.Response response) {
    if(response.statusCode == 200) {
      var decoded = json.decode(response.body);

      List<Video> list = decoded['items'].map<Video>(
          (video) {
            return Video.fromJson(video);
          }
      ).toList();

      return list;
    }
    else {
      throw Exception('Failed to load videos');
    }
  }
}