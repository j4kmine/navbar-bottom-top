import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/inoculatornew.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Text(
                "SEMANGAT!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.red),
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 30.0,
                  ),
                ],
              ),
              margin: const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
              child: Card(
                child: Column(
                  children: [
                    Container(
                        child: const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Text("Eka Puspita Sari",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                            ))),
                    Container(
                        child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text("KONTAMINASI",
                                  style: TextStyle(
                                    color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                            ))),
                    Container(
                        child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                  "Kontaminsai Inok anda periode desember 2020",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ))),
                    Container(
                        child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text("0.12%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 20)),
                            ))),
                    Container(
                        child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                  "Kontaminsai Inok anda pada periode berjalan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ))),
                    Container(
                        child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text("0.12%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 20)),
                            ))),
                    Container(
                      width: MediaQuery.of(context).size.width,
                        child:  Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.0,bottom: 30.0,left: 20.0,right: 20.0),
                              child: ElevatedButton(
                                onPressed: () => null,
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(40) // fromHeight use double.infinity as width and 40 is the height
                                ),
                                child: const Text("OK",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
                              ),
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
