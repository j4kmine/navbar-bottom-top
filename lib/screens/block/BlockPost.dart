import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/models/PostModel.dart';
import 'package:http/http.dart' as http;
//all children from material app could access this provider
//all state located here
class BlockPost extends ChangeNotifier{
  List<Post>? _post;
  List<Post>? get listpost => _post;

  set listpost(List<Post>? val){
    _post = val;
    notifyListeners();
  }

  Post?_detail;
  Post? get detailpost => _detail;

  set detailpost(Post? val){
    _detail = val;
    notifyListeners();
  }
  int _id = 0;
  int get idPost => _id;
  set idPost(int val){
    if(val != 0){
      _id = val;
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
  Future<Post?> getDetail() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/'+_id.toString()));
    detailpost = Post.fromJson(jsonDecode(response.body));
    return detailpost;
  }

}