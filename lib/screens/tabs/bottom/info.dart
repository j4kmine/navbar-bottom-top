import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  const Info({Key? key}):super(key: key);
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
