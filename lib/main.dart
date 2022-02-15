import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/block/BlockPost.dart';
import 'package:navigation_drawer/screens/form/multi_form.dart';
import 'package:navigation_drawer/screens/formsinarmas/form_dyanimc.dart';
import 'package:navigation_drawer/screens/formsinarmas/form_result.dart';
import 'package:navigation_drawer/screens/formsinarmas/formnew.dart';
import 'package:navigation_drawer/screens/home.dart';
import 'package:navigation_drawer/screens/providerget/Homes.dart';
import 'package:navigation_drawer/screens/settings.dart';
import 'package:navigation_drawer/screens/statemanagementfirst/HomeScreen.dart';
import 'package:navigation_drawer/screens/tabs/top/tab2.dart';
import 'package:navigation_drawer/screens/tabs/top/tab3.dart';
import 'package:navigation_drawer/screens/videos.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  //for multiprovider use
  // MultiProvider(
  // providers: [
  // ChangeNotifierProvider<BlockPost>.value(value: BlockPost()),
  // ],
  // )
  @override
  Widget build(BuildContext context) {

    // return ChangeNotifierProvider<BlockPost>.value(
    //   value: BlockPost(),
    //   child: MaterialApp(
    //     title: 'Codding with Curry',
    //     home: Tab2(),
    //
    //   ),
    // );
    return MaterialApp(
      title: 'Codding with Curry',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      initialRoute: 'tab2',
      routes: {
        'tab2':(context)=>FormDynamic(),
        'home':(context)=>Home(),
        'videos':(context)=>Videos(),
        'settings':(context)=>Settings()
      },

    );
  }
}


