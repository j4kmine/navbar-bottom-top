import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/statemanagementfirst/ItemAddNotifier.dart';
import 'package:provider/provider.dart';

class AddItemScreen extends StatelessWidget {
  AddItemScreen() :super();
  final String title = 'Add Item';
  TextEditingController _itemNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: _itemNameController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15.0),
                  hintText: 'Item Name'
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
                child: Text("Add Item"),
                onPressed: () async => {

                await Provider.of<ItemAddNotifier>(context,listen: false).addItem(_itemNameController.text),
                Navigator.pop(context)

            })
          ],
        ),
      ),
    );
  }
}