import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  const Welcome({Key? key}):super(key: key);
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
