class InnoculationModel {
  late int noLaminar;
  late int chloroxCnox;
  late int duration;
  late String spearId;
  late String fase;
  late String subfase;
  late String noTray;
  late List<int> jumlahHasil;
  late List<String> hasil;
  late List<int> jumlahVessel;
  late List<String> jenisVessel;
  late int jumlahOutlier;
  late int jumlahVesselOutlier;
  late String keteranganOutlier;
  late String hasilOutlier;
  late String jenisOutlier;
  late String startTime;
  late String endTime;
  InnoculationModel(this.noLaminar, this.chloroxCnox
      , this.duration, this.spearId, this.fase,
      this.subfase,this.noTray,this.jumlahHasil
      ,this.hasil,this.jumlahVessel,this.jenisVessel
      ,this.jumlahOutlier,this.jumlahVesselOutlier
      ,this.keteranganOutlier,this.hasilOutlier
      ,this.jenisOutlier ,this.startTime ,this.endTime);

  InnoculationModel.fromJson(Map<String, dynamic> json) {
    noLaminar = json['noLaminar'];
    chloroxCnox = json['chloroxCnox'];
    duration = json['duration'];
    spearId = json['spearId'];
    fase = json['fase'];
    subfase = json['subfase'];
    noTray = json['noTray'];
    jumlahHasil = json['jumlahHasil'].cast<String>();
    hasil = json['hasil'].cast<String>();
    jumlahVessel = json['jumlahVessel'].cast<String>();
    jenisVessel = json['jenisVessel'].cast<String>();
    jumlahOutlier = json['jumlahOutlier'];
    jumlahVesselOutlier = json['jumlahVesselOutlier'];
    keteranganOutlier = json['keteranganOutlier'];
    hasilOutlier = json['hasilOutlier'];
    jenisOutlier = json['jenisOutlier'];
    startTime = json['startTime'];
    endTime = json['endTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noLaminar'] = this.noLaminar;
    data['chloroxCnox'] = this.chloroxCnox;
    data['duration'] = this.duration;
    data['spearId'] = this.spearId;
    data['fase'] = this.fase;
    data['subfase'] = this.subfase;
    data['noTray'] = this.noTray;
    data['jumlahHasil'] = this.jumlahHasil;
    data['hasil'] = this.hasil;
    data['jumlahVessel'] = this.jumlahVessel;
    data['jenisVessel'] = this.jenisVessel;
    data['jumlahOutlier'] = this.jumlahOutlier;
    data['jumlahVesselOutlier'] = this.jumlahVesselOutlier;
    data['keteranganOutlier'] = this.keteranganOutlier;
    data['hasilOutlier'] = this.hasilOutlier;
    data['jenisOutlier'] = this.jenisOutlier;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;

    return data;
  }
}