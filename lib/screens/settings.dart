import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget{

  @override
  _SettingsState createState() => _SettingsState();
}
class _SettingsState extends State<Settings>{
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
          padding: new EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child:  Text(
                      "Aktivitas",
                      style: Theme.of(context).textTheme.headline6
                  ),
                ),
                TextFormField(
                    keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                    decoration: const InputDecoration(
                        hintText: 'No. Laminar',
                        labelText: 'No. Laminar'
                    )
                ),
                Row(
                  children: [
                    Expanded( //If you dont have the height you can expanded with flex
                      flex: 11,
                      child: Container(
                        child: TextFormField(
                            keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                            decoration: const InputDecoration(
                                hintText: 'No. Laminar',
                                labelText: 'No. Laminar'
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                       child: const Text("%",textAlign: TextAlign.center,),
                      ))
                  ],
                ),
                Row(
                  children: [
                    Expanded( //If you dont have the height you can expanded with flex
                      flex: 11,
                      child: Container(
                        child: TextFormField(
                            keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                            decoration: const InputDecoration(
                                hintText: 'No. Laminar',
                                labelText: 'No. Laminar'
                            )
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: const Text("Min.",textAlign: TextAlign.center,),
                        ))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child:  Text(
                      "Aktivitas",
                      style: Theme.of(context).textTheme.headline6
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child:  Text(
                      "Spear ID",
                      style: Theme.of(context).textTheme.subtitle1
                  ),
                ), Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child:  Text(
                      "2001",
                      style: Theme.of(context).textTheme.bodyText1
                  ),
                ),Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child:  Text(
                      "Spear ID",
                      style: Theme.of(context).textTheme.subtitle1
                  ),
                ), Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child:  Text(
                      "2001",
                      style: Theme.of(context).textTheme.bodyText1
                  ),
                ),Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child:  Text(
                      "Spear ID",
                      style: Theme.of(context).textTheme.subtitle1
                  ),
                ), Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child:  Text(
                      "2001",
                      style: Theme.of(context).textTheme.bodyText1
                  ),
                )

              ],
            ),
          )
      ),
    );
  }
}