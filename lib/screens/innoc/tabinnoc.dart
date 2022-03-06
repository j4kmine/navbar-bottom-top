import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:navigation_drawer/screens/block/BlockPost.dart';
import 'package:navigation_drawer/screens/block/DummyPost.dart';
import 'package:navigation_drawer/screens/models/PostModel.dart';
import 'package:provider/provider.dart';

class TabInnoc extends StatefulWidget {
  @override
  _TabInnocState createState() => _TabInnocState();
}

class _TabInnocState extends State<TabInnoc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/bghome.png',
                  fit: BoxFit.fill, width: MediaQuery
                      .of(context)
                      .size
                      .width),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 130.0, left: 10.0),
                  child: Container(
                    height: 350,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CardUI(context),
                        CardUI(context),
                        CardUI(context),
                        Padding(
                            padding: EdgeInsets.only(top: 50.0),
                            child: ButtonUI(context))
                      ],
                    ),
                  )),
            ),
            Align(
              alignment: Alignment.center,
              child: Visibility(
                  visible: false,
                  child: MaterialButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: new Icon(Icons.photo),
                                  title: new Text('Photo'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    color: Colors.black,
                    textColor: Colors.white,
                    child: const Icon(
                      Icons.add,
                      size: 50,
                    ),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                  )),
            ),
            const Align(
                alignment: Alignment.center,
                child: Visibility(
                    visible: false,
                    child: Padding(
                      padding: EdgeInsets.only(top: 120),
                      child: Text("Tambah \nSpear Id",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/img.png',
                  fit: BoxFit.fill, width: MediaQuery
                      .of(context)
                      .size
                      .width),
            ),
          ],
        ),
      ),
    );
  }
}

Widget ButtonUI(BuildContext context) {
  return Container(
    child: Column(
      children: [
        Container(
          child: MaterialButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return WidgetBottomDialog(context);
                  });
            },
            color: Colors.black,
            textColor: Colors.white,
            child: const Icon(
              Icons.add,
              size: 50,
            ),
            padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ),
        ),
        Container(
          child: Text("Tambah \nSpear Id",
              style: TextStyle(fontWeight: FontWeight.bold)),
        )
      ],
    ),
  );
}

Widget CardUI(BuildContext context) {
  return Container(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 3),
          ],
        ),
        width: 250,
        child: Expanded(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                        flex: 6, // 20%
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15.0, left: 10.0),
                              child: Image.asset(
                                  'assets/images/icon_inoc_inactive.png',
                                  width: 50,
                                  height: 50),
                            ),
                            const Text(
                              "Spear ID",
                              style: TextStyle(fontSize: 12.0),
                            )
                          ],
                        )),
                    const Expanded(
                        flex: 2, // 20%
                        child: Text("")),
                    const Expanded(
                        flex: 4, // 20%
                        child: Text(
                          "2016",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: const [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Positioned(
                            top: -10.0,
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 5.0),
                                child: Text("Kode Penanam :",
                                    style: TextStyle(fontSize: 12.0),
                                    textAlign: TextAlign.start))))
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: GridView.count(
                      childAspectRatio: 1 / 0.5,
                      crossAxisCount: 3,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "2001",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "2001",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "2001",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "2001",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "2001",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.redAccent,
                            width: 1.0,
                          ),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: const [
                          Expanded(
                              flex: 8,
                              child: Text(
                                "Edit Kode Penanam",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              )),
                          Expanded(flex: 2, child: Icon(Icons.remove_circle))
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    ),
  );
}

WidgetBottomDialog(BuildContext context) {
  final DummyPost blokpost = Provider.of<DummyPost>(context);
  blokpost.fetchpost();
  return Container(
      child: Column(
        children: [
          Column(
              children: [
                Stack(
                    children: [
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 56.0,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("Pilih Spear", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),

                      Positioned(
                          right: 0.0,
                          top: 0.0,
                          child: IconButton(
                              icon: Icon(
                                Icons.close_rounded, color: Colors.black,),
                              // Your desired icon
                              onPressed: () {
                                Navigator.of(context).pop();
                              }
                          )
                      ),

                    ]
                ),
              ]
          ),
          Expanded(
            child: blokpost.listpost != null ?
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 0.5,
                      crossAxisCount: 3
                  ),
                  itemCount: blokpost.listpost?.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell (
                        onTap: (){
                          if(blokpost.listpost?[index]!.id != null){
                            var id = blokpost.listpost?[index]!.id;
                            blokpost.addToCollective(id!! ,index);
                          }

                        },
                        //child: Text(blokpost.nama.toString()),

                        child:blokpost.spearcollective[index] != null ? widgetSpear(context, blokpost.listpost![index],true):widgetSpear(context, blokpost.listpost![index],false),
                    );

                  }),

            ) : Container(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Visibility(
                visible: blokpost.spearcollective.isNotEmpty?true:false,
                child: ElevatedButton(

                    onPressed: (){ blokpost.sendSelectedData();},
                    child: Text('Submit'),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width /1.2 ,40)),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    )
                ),
              ),
            ),
          )

        ],
      )
  );
}
widgetLoading(){
  return Container(
    child:const SizedBox(
      child: CircularProgressIndicator(),
      height: 20.0,
      width: 20.0,
    ),
  );
}
widgetSpear(BuildContext context, Post post,bool visible) {
  return Container(
      margin: const EdgeInsets.only(top: 20.0, right: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.white, spreadRadius: 3),
        ],
      ),

      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 9.0),
        child: Row(
          children: [
            Expanded(
              flex: 5,
                child: Text(
                  post!.id!.toString(),
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
              )
            ),
            Expanded(
                flex: 5,
                child: Visibility(
                  visible: visible,
                  child: Image.asset(
                      'assets/images/img_5.png',
                      width: 50,
                      height: 50),
                )
            )
          ],


      ),
    )
  );

}