import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/formsinarmas/form_result.dart';

class FormNew extends StatefulWidget {
  @override
  _FormNewState createState() => _FormNewState();
}

class _FormNewState extends State<FormNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children:  [
                  Text("sss"),
                ],
              )
            ],
          ),
          FormNew()
        ],
      ),
    ));
  }
}
