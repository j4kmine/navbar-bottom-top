import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class TabInnoc extends StatefulWidget{

  @override
  _TabInnocState createState() => _TabInnocState();
}
class _TabInnocState extends State<TabInnoc>{
  int _index = 0;
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child:  Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/bghome.png',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width),
            ),

            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: new Icon(Icons.photo),
                              title: new Text('Photo'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      });
                },
                color: Colors.black,
                textColor: Colors.white,
                child: const Icon(
                  Icons.add,
                  size: 50,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
            ),
            const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top:120),
                  child: Text("Tambah \nSpear Id",style: TextStyle(fontWeight: FontWeight.bold)),
                )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/img.png',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width),
            ),
          ],
        ),
      ),
    );
  }
}

