import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget{
  const Tab3({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
          children: [
            Container(
              color: Colors.orange,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),Container(
              color: Colors.orange,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
          ],
        )
    );
  }
}
