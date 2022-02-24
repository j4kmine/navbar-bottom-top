import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/innoc/tabinnoc.dart';

class HomeInnoc extends StatefulWidget{

  @override
  _HomeInnocState createState() => _HomeInnocState();
}
class _HomeInnocState extends State<HomeInnoc>{

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
                      text: "Daftar Pekerjaan",

                    ),
                    Tab(
                      text: "Hasil Kerja",

                    )

                  ]
              ),
            ),
            body:  TabBarView(
              children: [TabInnoc(),Text("dd")],
            )
        )
    );
  }
}