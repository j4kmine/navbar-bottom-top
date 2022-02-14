import 'package:flutter/cupertino.dart';

import 'Item.dart';

class ItemAddNotifier extends ChangeNotifier{
  List<Item> itemList = [];
  addItem(String Name) async{
    Item item = Item(Name);
    itemList.add(item);
    notifyListeners();
  }
}

