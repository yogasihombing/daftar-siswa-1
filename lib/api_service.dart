import 'dart:convert';

import 'package:daftarsiswa1/dataclass.dart';
import 'package:http/http.dart' as http;

class Service {
  Future<List<cData>> getAllData() async {
    final response = await http.get(
      Uri.parse('https://nabasa.co.id/topan/index.php/getSiswa'),
    );
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data'];
      // ignore: avoid_print
      print(jsonResponse);
      return jsonResponse.map((data) => cData.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load Data');
    } //API Get Siswa
  }

  Future<List<cData>> detailData() async {
    final response = await http.get(
      Uri.parse('https://nabasa.co.id/topan/index.php/detailSiswa'),
    );
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data'];
      // ignore: avoid_print
      print(jsonResponse);
      return jsonResponse.map((data) => cData.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load Data');
    } //API Detail Siswa
  }

  Future<List<cData>> insertData() async {
    final response = await http.get(
      Uri.parse('https://nabasa.co.id/topan/index.php/insertSiswa'),
    );
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data'];
      // ignore: avoid_print
      print(jsonResponse);
      return jsonResponse.map((data) => cData.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load Data');
    } //API insert Siswa
  }

  // ignore: non_constant_identifier_names
  Future<List<cData>> updateData() async {
    final response = await http.get(
      Uri.parse('https://nabasa.co.id/topan/index.php/updateSiswa'),
    );
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data'];
      // ignore: avoid_print
      print(jsonResponse);
      return jsonResponse.map((data) => cData.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load Data');
    } //API update Siswa
  }

  Future<List<cData>> deleteData() async {
    final response = await http.get(
      Uri.parse('https://nabasa.co.id/topan/index.php/updateSiswa'),
    );
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data'];
      // ignore: avoid_print
      print(jsonResponse);
      return jsonResponse.map((data) => cData.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load Data');
    }
  } //API delete Siswa
}
