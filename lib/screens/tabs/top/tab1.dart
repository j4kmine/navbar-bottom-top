import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget{
  const Tab1({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child:const Center(
            child: Text(
              'Tab 1',
              style: TextStyle(fontSize: 24),
            )
        )
    );
  }
}
