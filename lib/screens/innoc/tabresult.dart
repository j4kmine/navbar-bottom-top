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
                              scrollDirection: Axis.vertical,
                              children: <Widget>[
                                Row(
                                  children:  [
                                    Expanded(
                                        flex: 5,
                                        child: WidgetCard(context)),
                                    Expanded(
                                        flex: 5,
                                        child: WidgetCard(context))
                                  ],
                                )
                              ]
                          ))))
            ])));
  }
}

WidgetCard(BuildContext context){
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
