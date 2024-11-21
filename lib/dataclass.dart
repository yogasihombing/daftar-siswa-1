// ignore: camel_case_types
class cData {
  String cnis;
  String cnama;
  String ctelp;

  cData({
    required this.cnis,
    required this.cnama,
    required this.ctelp,
  });

  factory cData.fromJson(Map<String, dynamic> json) {
    return cData(
      cnis: json['nis'],
      cnama: json['nama'],
      ctelp: json['telp'],
    );
  }
}
