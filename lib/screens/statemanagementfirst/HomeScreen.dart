import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/statemanagementfirst/AddItemScreen.dart';
import 'package:navigation_drawer/screens/statemanagementfirst/ItemAddNotifier.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen() : super();
  final String title = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (context) {
                          return AddItemScreen();
                        }));
              },
              icon: Icon(Icons.add))
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Consumer<ItemAddNotifier>(
              builder: (context, _itemAddNotifier, _) {
                return ListView.builder(
                    itemCount: _itemAddNotifier.itemList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                              _itemAddNotifier.itemList[index].toString()));
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
