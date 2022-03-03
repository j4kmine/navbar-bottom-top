import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TabResult extends StatefulWidget {
  @override
  _TabResultState createState() => _TabResultState();
}

class _TabResultState extends State<TabResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
            child: Stack(alignment: Alignment.center, children: [
      Align(
        alignment: Alignment.topCenter,
        child: Image.asset('assets/images/bghome.png',
            fit: BoxFit.fill, width: MediaQuery.of(context).size.width),
      ),
      Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding: EdgeInsets.only(top: 130.0, left: 10.0),
              child: Container(
                  height: MediaQuery.of(context).size.height - 300,
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Row(
                          children: [
                            Expanded(flex: 5, child: WidgetCard(context)),
                            Expanded(flex: 5, child: WidgetCard(context))
                          ],
                        ),
                      ])))),
      Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      insetPadding: EdgeInsets.all(10.0),
                      content: setupAlertDialoadContainer(context),
                    );
                  }
              );
            },
            child: Image.asset(
              'assets/images/img_3.png',
              width: 300,
              height: 300,
            ),
          )),
    ])));
  }
}

Widget setupAlertDialoadContainer(context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height - 130, // Change as per your requirement
        width: MediaQuery.of(context).size.width , // Change as per your requirement
        child: ListView.builder(

          shrinkWrap: true,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/img_4.png',
                          width: 28,
                          height: 28,
                        ),
                        Text("125",style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                            Expanded(child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/img_3.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text("svujcuc8")
                                  ],
                                ),
                              ),
                            )),
                          ],
                        )
                      ],
                    )

                  ],
                )
              ],
            );
          },
        ),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: FlatButton(

          onPressed: (){
            Navigator.pop(context);
          },child: Text("Close"),),
      )
    ],
  );
}

WidgetModal(BuildContext context){
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Fase",
                                  style: TextStyle(fontSize: 15.0),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Text(
                              "Explant",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                      ),
                    )),
                Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: const Icon(
                        Icons.close_rounded,
                        size: 16.0,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/img_3.png',
                          width: 40,
                          height: 40,
                        ),
                        Text("cv89299",style: TextStyle(color:Colors.redAccent),)
                      ],
                    ),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 20.0),
                                child: const Text(
                                  "Spear ID",
                                  style: TextStyle(fontSize: 15.0),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 20.0),
                                child: const Text(
                                  "2001",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 0.0),
                      child:Row(
                        children: [
                          Image.asset(
                            'assets/images/img_4.png',
                            width: 28,
                            height: 28,
                          ),
                          Text("125",style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0,left: 20.0),
                        child: TextFormField(
                          decoration: new InputDecoration(
                            hintText: "Explan",
                            labelText: "Explan",
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Ok'),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100,30)),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                color: Colors.green,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0,left: 20.0),
                        child: TextFormField(
                          decoration: new InputDecoration(
                            hintText: "SB",
                            labelText: "SB",
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Revisi'),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(100,30)),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        );
      });
}
WidgetCard(BuildContext context) {
  return Container(
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.network(
              'https://placeimg.com/640/480/any',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height /3.5,
            width: MediaQuery.of(context).size.width / 2,
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "2001",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.0, right: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.asset('assets/images/img_1.png',
                              width: 25, height: 25),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "3000 Explant",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.0, right: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.asset('assets/images/img_2.png',
                              width: 25, height: 25),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "600 SB",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.0, right: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.asset('assets/images/img_3.png',
                              width: 25, height: 25),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "28 / 30",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
              shadowColor: Colors.green,
              margin: EdgeInsets.only(top: 65.0),
            ),
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    ),
  );
}
