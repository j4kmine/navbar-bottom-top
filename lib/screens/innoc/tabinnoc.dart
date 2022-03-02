import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
                  fit: BoxFit.fill, width: MediaQuery.of(context).size.width),
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
                  fit: BoxFit.fill, width: MediaQuery.of(context).size.width),
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
  return Container(
      child: Column(
        children: [
          Column(
              children: [
                Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 56.0,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("Pilih Spear",style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        ) ,
                      ),

                      Positioned(
                          right: 0.0,
                          top: 0.0,
                          child: IconButton(
                              icon: Icon(Icons.close_rounded,color: Colors.black,), // Your desired icon
                              onPressed: (){
                                Navigator.of(context).pop();
                              }
                          )
                      )
                    ]
                ),
              ]
          ),
          Expanded(
            child:  Padding(
              padding: EdgeInsets.only(left: 15.0,right: 15.0),
              child: GridView.count(
                  childAspectRatio: 1 / 0.5,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20.0, right: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.white, spreadRadius: 3),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 9.0),
                        child: Text(
                          "2001",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0, right: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.white, spreadRadius: 3),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 9.0),
                        child: Text(
                          "2001",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0, right: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.white, spreadRadius: 3),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 9.0),
                        child: Text(
                          "2001",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0, right: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(color: Colors.white, spreadRadius: 3),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 9.0),
                        child: Text(
                          "2001",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),




                  ]),
            ),
          )

        ],
      )
  );
}
