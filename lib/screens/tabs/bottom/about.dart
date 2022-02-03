import 'package:flutter/material.dart';

class About extends StatelessWidget{
  const About({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child:const Center(
            child: Text(
              'Tab 2',
              style: TextStyle(fontSize: 24),
            )
        )
    );
  }
}
