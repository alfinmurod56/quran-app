import 'package:alquran/app/data/models/detail_surah.dart';
import 'package:alquran/app/data/models/surah.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri url = Uri.parse("https://api.quran.gading.dev/surah/");
  var res = await http.get(url);

  List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

  // print(data);

  Surah surahAnnas = Surah.fromJson(data[113]);

  // print(surahAnnas.toJson());

  // URL Surah Annas
  Uri urlAnnas =
      Uri.parse("https://api.quran.gading.dev/surah/${surahAnnas.number}");
  var resAnnas = await http.get(urlAnnas);

  Map<String, dynamic> dataAnnas =
      (json.decode(resAnnas.body) as Map<String, dynamic>)["data"];
  // print(dataAnnas);

  DetailSurah annas = DetailSurah.fromJson(dataAnnas);

  print(annas);
}
