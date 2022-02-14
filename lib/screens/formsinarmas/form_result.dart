import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormResult extends StatelessWidget {
  const FormResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Container(
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      // Use email input type for emails.
                      decoration: const InputDecoration(
                          hintText: 'Jumlah Hasil', labelText: 'Jumlah Hasil')),
                ),
              )
                  //If you dont have the height you can expanded with flex

                  ),
              Expanded(
                //If you dont have the height you can expanded with flex

                child: Container(
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      // Use email input type for emails.
                      decoration: const InputDecoration(
                          hintText: 'Hasil', labelText: 'Explant')),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Container(
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      // Use email input type for emails.
                      decoration: const InputDecoration(
                          hintText: 'Jumlah Vessel',
                          labelText: 'Jumlah Vessel')),
                ),
              )
                  //If you dont have the height you can expanded with flex

                  ),
              Expanded(
                //If you dont have the height you can expanded with flex

                child: Container(
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      // Use email input type for emails.
                      decoration: const InputDecoration(
                          hintText: 'Jenis Vessel', labelText: 'Jenis Vessel')),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
