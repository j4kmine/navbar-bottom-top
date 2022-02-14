import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/block/BlockPost.dart';
import 'package:navigation_drawer/screens/models/PostModel.dart';
import 'package:provider/provider.dart';

class DetailPost extends StatelessWidget {
  final int id;

  DetailPost(this.id);

  @override
  Widget build(BuildContext context) {
    final BlockPost blockPost = Provider.of<BlockPost>(context);
    blockPost.getDetail();
    Post? post = blockPost.detailpost;
    return Scaffold(
      appBar: AppBar(
        title: post != null ? Text(post!.title!) : Text(""),
      ),
      body: post != null
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Text(post.id.toString()),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(post!.title!),
          ),
          Text(post!.body!),
          Padding(padding: EdgeInsets.only(top: 30.0), child:Row(
            children: [
              RaisedButton(onPressed: (){
                if(post?.id != null){
                  blockPost.idPost = post!.id! - 1;
                }

              },child: Text("Prev"),),
              RaisedButton(onPressed: (){
                if(post?.id != null){
                  blockPost.idPost = post!.id! + 1;
                }

              },child: Text("Next"),)
            ],
          ),)
        ],
      )
          : CircularProgressIndicator(),
    );
  }
}
