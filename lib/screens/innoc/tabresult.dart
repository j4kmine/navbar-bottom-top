import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          onTap:  () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: <Widget>[

                    ],
                  );
                });

          },
          child: Image.asset(
            'assets/images/img_3.png',
            width: 300,
            height: 300,
          ),
        )
      ),
    ])));
  }
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
            height: 200,
            width: 250,
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
