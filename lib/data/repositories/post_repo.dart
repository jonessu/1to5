import 'package:digitatravelmoney/data/models/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostRepository {
  Future<List<PostModel>> fetchPosts() async {
    List<PostModel> posts = [];

    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      data.map((post) => posts.add(PostModel.fromJson(post))).toList();
    }
    return posts;
  }
}
