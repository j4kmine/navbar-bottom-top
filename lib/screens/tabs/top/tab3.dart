import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget{
  const Tab3({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child:const Center(
            child: Text(
              'Tab 3',
              style: TextStyle(fontSize: 24),
            )
        )
    );
  }
}
