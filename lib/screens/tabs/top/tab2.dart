import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/formsinarmas/form_dyanimc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Tab2 extends StatelessWidget {
  PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Form"),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Stack(
            children: [
              Form(
                child: PageView(
                  controller: _pageController,
                  children: [
                    Column(
                      children: [
                        inputUI("Laminar could not be empty", "No Laminar",
                            "No Laminar", true, ""),
                        Row(children: [
                          Expanded(
                              flex: 11,
                              child: inputUI("Chlorox conc could not be empty",
                                  "Chlorox conc", "Chlorox conc", true, "")),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: const Text(
                                  "%",
                                  textAlign: TextAlign.center,
                                ),
                              ))
                        ]),
                        Row(children: [
                          Expanded(
                              flex: 11,
                              child: inputUI("Duration could not be empty",
                                  "Duration", "Duration", true, "")),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: const Text(
                                  "Min",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ]),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 30.0),
                              child: Text("Aktivitas",
                                  style: Theme.of(context).textTheme.headline6),
                            )
                          ],
                        ),
                        inputUI("Spear ID could not be empty", "Spear ID",
                            "Spear ID", false, "2001"),
                        inputUI("Fase could not be empty", "Fase", "Fase",
                            false, "Explant"),
                        inputUI("Sub Fase", "Sub Fase", "Sub Fase", false,
                            "Explant 1"),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 30.0, top: 30.0),
                            child: Row(
                              children: [
                                Text("Output",
                                    style:
                                        Theme.of(context).textTheme.headline6),
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Expanded(
                                //If you dont have the height you can expanded with flex
                                flex: 6,
                                child: Container(
                                  child: inputUI(
                                      "No Keranjang",
                                      "SNo Keranjang",
                                      "No Keranjang",
                                      false,
                                      "kjvb78998"),
                                ),
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            '../assets/images/scan_barcode.png',
                                            width: 100,
                                            height: 100),
                                      ),
                                      Text("Scan Keranjang",
                                          style:
                                          Theme.of(context).textTheme.subtitle2)
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: FloatingActionButton(
                                elevation: 0.0,
                                child: new Icon(Icons.add),
                                backgroundColor: Colors.black,
                                onPressed: (){}
                            )
                          )
                        )

                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 2,
                        effect: WormEffect(
                            dotColor: Colors.grey,
                            activeDotColor: Colors.green),
                        onDotClicked: (index) => _pageController.animateToPage(
                            index,
                            duration: Duration(microseconds: 500),
                            curve: Curves.bounceOut),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget inputUI(validator, hinText, labelText, enable, defvalue) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(children: [
          Flexible(
            child: TextFormField(
                keyboardType: TextInputType.number,
                enabled: enable,
                initialValue: defvalue,
                validator: (onValidateVal) {
                  if (onValidateVal != null && onValidateVal.isEmpty) {
                    return validator;
                  }
                },
                onSaved: (onSavedVal) => {},
                decoration:
                    InputDecoration(hintText: hinText, labelText: labelText)),
          )
        ]));
  }

  Widget _page(String s, Color color) {
    return Container(color: color, child: Center(child: Text(s)));
  }
}
