import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 3,
        children: <Widget>[
          GestureDetector(
            onTap: () => showDialog<void>(
              context: context,
              barrierDismissible: true, // user must tap button!
              builder: (BuildContext context) {
                return Container(
                    margin: const EdgeInsets.only(
                        top: 70.0),
                    child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(color: Colors.transparent, spreadRadius: 3),
                        ],
                      ),
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: const Text("Pilih Spear",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19)),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: ()=> Navigator.of(context).pop(),
                                  child:  Container(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Image.asset('assets/images/close_icon.png',
                                          width: 50, height: 50)
                                )

                                )
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 70.0, left: 20.0, right: 20.0),
                                  child: GridView.count(
                                    childAspectRatio: 3 / 2,
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    crossAxisCount: 6,
                                    children: [
                                      GestureDetector(
                                        onTap: () => {},
                                        child: Container(
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.transparent,
                                                  spreadRadius: 3),
                                            ],
                                          ),
                                          child: const Align(
                                            alignment: Alignment.center,
                                            child: Text("2001",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: (Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              width: MediaQuery.of(context).size.width - 80,
                              height: 33,
                              child: (TextButton(
                                onPressed: () => null,
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red)),
                                child: const Text("Kerjakan",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
                              )),
                            )),
                          )
                        ],
                      ),
                    ),
                  ]),
                ));
              },
            ),
            child: Card(
              color: Colors.white54,
              elevation: 0.0,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/icon_inoc_inactive.png',
                      width: 70, height: 70),
                  const Text('Inoculation ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, 'home'),
            child: Card(
              elevation: 0.0,
              color: Colors.white54,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/icon_inoc_inactive.png',
                      width: 70, height: 70),
                  const Text('Explant ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, 'home'),
            child: Card(
                elevation: 0.0,
                color: Colors.white54,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/icon_inoc_inactive.png',
                        width: 70, height: 70),
                    const Text('Callus ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                )),
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, 'home'),
            child: Card(
                elevation: 0.0,
                color: Colors.white54,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/icon_embryoid.png',
                        width: 70, height: 70),
                    const Text('Embryoid ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                )),
          ),
          GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, 'home'),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/icon_shoot.png',
                      width: 70, height: 70),
                  const Text(
                      'Shoot \n'
                      'Development',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )),
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, 'home'),
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/icon_root.png',
                    width: 70, height: 70),
                const Text(
                    'Root \n'
                    'Induction',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      )),
    );
  }
}
