import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  const Welcome({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

          body: GridView.count(

            crossAxisCount: 3,
            children: <Widget>[
              GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(
                      context,
                      'home'
                  ),
                  child: Card(
                      color: Colors.white54,
                      elevation: 0.0,

                   child: Column(
                      children: <Widget>[

                        Image.asset('assets/images/icon_inoc_inactive.png')
                      ],
                    ),
                ),
              ),GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(
                    context,
                    'home'
                ),
                child: Card(
                    elevation: 0.0,
                    color: Colors.white54,
                  child: Column(
                    children: <Widget>[

                      Image.asset('assets/images/icon_inoc_inactive.png')
                    ],
                  ),
                ),
              ), GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(
                    context,
                    'home'
                ),
                child: Card(
                    elevation: 0.0,
                    color: Colors.white54,
                    child:Image.asset('assets/images/icon_inoc_inactive.png')
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(
                    context,
                    'home'
                ),
                child: Card(
                    elevation: 0.0,
                    color: Colors.white54,
                    child:Image.asset('assets/images/icon_inoc_inactive.png')
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(
                    context,
                    'home'
                ),
                child: Card(
                    elevation: 0.0,
                    color: Colors.white54,
                    child:Image.asset('assets/images/icon_inoc_inactive.png')
                ),
              ), GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(
                    context,
                    'home'
                ),
                child: Card(
                    elevation: 0.0,
                    color: Colors.white54,
                    child:Image.asset('assets/images/icon_inoc_inactive.png')
                ),
              )
            ],
          )),
    );
  }
}
