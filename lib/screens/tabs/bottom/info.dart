import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Column(children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text("123456-9009-900",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left),
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 8.0),
                                    child: const Text("00:30:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 26),
                                        textAlign: TextAlign.left))),
                            Align(child: Container(
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(
                                    top: 8.0,left: 35.0),
                                child: const Text("08:40:00 - 09:10:00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,color: Colors.grey),
                                    textAlign: TextAlign.left)
                            ))
                          ]))),

                ),

              ],
            ))
      ],
    ));
  }
}
