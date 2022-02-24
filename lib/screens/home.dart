import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/tabs/bottom/about.dart';
import 'package:navigation_drawer/screens/tabs/bottom/info.dart';
import 'package:navigation_drawer/screens/tabs/bottom/welcome.dart';
import 'package:navigation_drawer/screens/tabs/top/tab2.dart';
import 'package:navigation_drawer/side_drawer.dart';

class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
      appBar: AppBar(
        title: Text('Inoculation & Subculture'),
        bottom: const TabBar(
          tabs:[
            Tab(
              text: "List Spear",

            ),
            Tab(
                text: "Cek Hasil Inoc",

            )

          ]
        ),
      ),
      drawer: SideDrawer(),
      body: const TabBarView(
        children: [Welcome(),Welcome()],
      )
    )
    );

  }
}