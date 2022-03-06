import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:navigation_drawer/screens/models/PostModel.dart';
import 'package:http/http.dart' as http;
class DummyPost extends ChangeNotifier{
  List<Post>? _post;
  Map<int, int> spearcollective = {};
  String? nama= "bayu";
  List<Post>? get listpost => _post;
  set listpost(List<Post>? val) {
    _post = val;
    notifyListeners();
  }


  void addToCollective(int id, int key) {
    if( spearcollective[key] != null){
      spearcollective.remove(key);
    }else{
      spearcollective[key] = id;
    }
    notifyListeners();
  }
  Future<List<Post>?> fetchpost() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    List res = jsonDecode(response.body);
    List<Post> data = [];
    for(var i = 0; i < res.length; i ++){
      var post = Post.fromJson(res[i]);
      data.add(post);
    }
    listpost = data ;

    return listpost;
  }
  sendSelectedData() async {

    final uri = Uri.parse('http://httpbin.org/post');
    final headers = {'Content-Type': 'application/json'};
    Map<String, String> body = {};
    List<Map<String,String>> listdata = [];
    final encoding = Encoding.getByName('utf-8');
    spearcollective.forEach((key, value) {
      body = {"spear_id":value.toString()};
      listdata.add(body);
    });
    Map <String,dynamic> datasend = {"data":listdata};
    String jsonBody = json.encode(datasend);
    Response response = await post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );

    int statusCode = response.statusCode;
    String responseBody = response.body;
  }


}