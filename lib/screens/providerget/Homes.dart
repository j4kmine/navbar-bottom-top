import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/block/BlockPost.dart';
import 'package:navigation_drawer/screens/providerget/DetailPost.dart';
import 'package:navigation_drawer/screens/widget/CardPost.dart';
import 'package:provider/provider.dart';

class Homes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BlockPost blokpost = Provider.of<BlockPost>(context);
    blokpost.fetchpost();
    return Scaffold(
      appBar: AppBar(
        title: Text("POST"),
      ),
      body: blokpost.listpost != null
          ? ListView.builder(
              itemCount: blokpost.listpost?.length,
              itemBuilder: (context, int index) {
                return GestureDetector(
                  onTap: (){
                    blokpost.idPost = blokpost.listpost![index].id!;
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPost(blokpost.listpost![index].id!)));
                  },
                  child: cardPost(blokpost.listpost![index].id,
                    blokpost.listpost![index].title,
                ));
                // return cardPost(blokpost.listpost![index].id,
                //     blokpost.listpost![index].title);
              })
          : CircularProgressIndicator(),
    );
  }
}
