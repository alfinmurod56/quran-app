// import 'package:alquran/app/data/models/detail_surah.dart';
// import 'package:alquran/app/data/models/surah.dart';
import 'package:alquran/app/data/models/ayat.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var res =
      await http.get(Uri.parse("https://api.quran.gading.dev/surah/108/1"));
  Map<String, dynamic> data = json.decode(res.body)["data"];

  // Convert Map -> Model Ayat
  Ayat ayat = Ayat.fromJson(data);
  print(ayat);
}

  //  Uri url = Uri.parse("https://api.quran.gading.dev/surah/$id");
  //   var res = await http.get(url);

  //   Map<String, dynamic> data =
  //       (json.decode(res.body) as Map<String, dynamic>)["data"];
  //   DetailSurah test = DetailSurah.fromJson(data);
  //   print(test.verses);

  //   return DetailSurah.fromJson(data);

// =======================================================

  // Uri url = Uri.parse("https://api.quran.gading.dev/surah/");
  // var res = await http.get(url);

  // List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

  // // print(data);

  // Surah surahAnnas = Surah.fromJson(data[113]);

  // // print(surahAnnas.toJson());

  // // URL Surah Annas
  // Uri urlAnnas =
  //     Uri.parse("https://api.quran.gading.dev/surah/${surahAnnas.number}");
  // var resAnnas = await http.get(urlAnnas);

  // Map<String, dynamic> dataAnnas =
  //     (json.decode(resAnnas.body) as Map<String, dynamic>)["data"];
  // // print(dataAnnas);

  // DetailSurah annas = DetailSurah.fromJson(dataAnnas);

  // print(annas);
