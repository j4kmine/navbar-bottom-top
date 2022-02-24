import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:navigation_drawer/screens/formsinarmas/form_dyanimc.dart';
import 'package:navigation_drawer/screens/models/innoculation_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  _Tab2 createState() => _Tab2();
}
class _Tab2  extends State<Tab2> {
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  PageController _pageController = new PageController();
  late InnoculationModel innoculationModel = InnoculationModel(
      0,0,0,"","","","", new List<int>.empty(growable: true),
  new List<String>.empty(growable: true), new List<int>.empty(growable: true),
  new List<String>.empty(growable: true),0,0,"","","","",""
  );

  Future scanbarcode()async{
    await FlutterBarcodeScanner.scanBarcode("#009922", "Cancel",  true, ScanMode.BARCODE).then(
            (value) => this.innoculationModel.noTray = value
    );
  }
  @override
  void initState() {
    super.initState();

    innoculationModel.jumlahHasil?.add(0);
    innoculationModel.hasil?.add("");
    innoculationModel.jumlahVessel?.add(0);
    innoculationModel.jenisVessel?.add("");
  }

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
                    ListView(
                      children: [
                        inputUI("Laminar could not be empty", "No Laminar",
                            "No Laminar", true, "",this.innoculationModel.noLaminar),
                        Row(children: [
                          Expanded(
                              flex: 11,
                              child: inputUI("Chlorox conc could not be empty",
                                  "Chlorox conc", "Chlorox conc", true, "",this.innoculationModel.chloroxCnox)),
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
                                  "Duration", "Duration", true, "",this.innoculationModel.duration)),
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
                            "Spear ID", false, "2001",this.innoculationModel.spearId),
                        inputUI("Fase could not be empty", "Fase", "Fase",
                            false, "Explant",this.innoculationModel.fase),
                        inputUI("Sub Fase", "Sub Fase", "Sub Fase", false,
                            "Explant 1",this.innoculationModel.subfase),
                      ],
                    ),

                    ListView(
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
                                      "kjvb78998",this.innoculationModel.noTray),
                                ),
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Column(
                                    children: [
                                      Container(
                                        child:GestureDetector(
                                          onTap: () {
                                            scanbarcode();
                                          },
                                          child: Image.asset(
                                              '../assets/images/scan_barcode.png',
                                              width: 100,
                                              height: 100),
                                        )

                                      ),
                                      Text("Scan Keranjang",
                                          style:
                                          Theme.of(context).textTheme.subtitle2)
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(20.0),
                            child: DynamicUI(),
                        ),
                        Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: FloatingActionButton(
                                elevation: 0.0,
                                child: new Icon(Icons.add),
                                backgroundColor: Colors.black,
                                onPressed: (){
                                  addDyanmicUi();
                                }
                            )
                          )
                        ),

                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(top:60.0),

                      child: Column(
                        children: [

                          Row(
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: inputUI("Jumlah Outlier could not be empty",
                                        "Jumlah Outlier", "Jumlah Outlier", true, "",this.innoculationModel.jumlahOutlier)),
                                Expanded(
                                    flex: 6,
                                    child: Container(
                                      child: inputUI("Hasil could not be empty",
                                          "Hasil", "Hasil", true, "",this.innoculationModel.hasilOutlier),
                                    )),
                              ]),
                          Row(children: [
                            Expanded(
                                flex: 6,
                                child: inputUI("Jumlah Vessel Outlier could not be empty",
                                    "Jumlah Vessel Outlier", "Jumlah  Vessel Outlier", true, "",this.innoculationModel.jumlahVesselOutlier)),
                            Expanded(
                                flex: 6,
                                child: Container(
                                  child: inputUI("Jenis Outlier could not be empty",
                                      "Jenis Outlier", "Jenis Outlier", true, "",this.innoculationModel.jenisOutlier),
                                )),
                          ]),
                          Row(children: [
                            Expanded(
                                flex: 6,
                                child: inputUI("Keterangan Outlier could not be empty",
                                    "Keterangan Outlier", "Keterangan  Outlier", true, "",this.innoculationModel.keteranganOutlier)),

                          ]),
                          Expanded(
                            child:Align(
                              alignment: Alignment.bottomCenter,
                              child:Padding(
                                padding: EdgeInsets.only(bottom: 30.0),
                                  child:SizedBox(
                                    width: MediaQuery.of(context).size.width - 50,
                                    child: FormHelper.submitButton(
                                      "Save",
                                          () async {

                                      },
                                      btnColor: Colors.green,
                                      borderColor: Colors.green
                                    ),
                                  )
                              )
                            )

                          )


                        ],
                      ),
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
                        count: 3,
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
  Widget DynamicUI() {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: this.innoculationModel.jumlahHasil!.length,
      itemBuilder: (context, index) {
        return Column(
          children:[
            Row(children:[
              Flexible(
                fit: FlexFit.loose,
                child: inputUI("Jumlah Hasil could not be empty",
                    "Jumlah Hasil", "Jumlah Hasil", true,
                    "",this.innoculationModel.jumlahHasil[index]),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: inputUI("Hasil could not be empty",
                    " Hasil", " Hasil", true,
                    "",this.innoculationModel.hasil[index]),
              ),
            ]),
            Row(children:[
              Flexible(
                fit: FlexFit.loose,
                child: inputUI("Jumlah Vessel could not be empty",
                    "Jumlah Vessel", "Jumlah Vessel", true,
                    "",this.innoculationModel.jumlahVessel[index]),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: inputUI("jenis Vessel could not be empty",
                    " jenis Vessel", " jenis Vessel", true,
                    "",this.innoculationModel.jenisVessel[index]),
              ),
            ])
          ],
        );
      },
      separatorBuilder: (context, index) => Divider(),
    );
  }
  Widget inputUI(validator, hinText, labelText, enable, defvalue,model) {
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
                onSaved: (onSavedVal) => {model = onSavedVal},
                decoration:
                    InputDecoration(hintText: hinText, labelText: labelText)),
          )
        ]));
  }
  void addDyanmicUi() {
    setState(() {
      innoculationModel.jumlahHasil?.add(0);
      innoculationModel.hasil?.add("");
      innoculationModel.jumlahVessel?.add(0);
      innoculationModel.jenisVessel?.add("");
    });
  }
  Widget _page(String s, Color color) {
    return Container(color: color, child: Center(child: Text(s)));
  }
}
